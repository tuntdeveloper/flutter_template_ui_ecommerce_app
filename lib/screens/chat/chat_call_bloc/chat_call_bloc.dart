import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/data/webrtc_interactor/webrtc_interactors.dart';
import 'package:stylish/logger.dart';
import 'package:stylish/screens/chat/chat_call_bloc/chat_call_event.dart';
import 'package:stylish/screens/chat/chat_call_bloc/chat_call_state.dart';

@injectable
class ChatCallBloc extends Bloc<ChatCallEvent, ChatCallState> {
  final WebrtcInteractor _interactor;

  ChatCallBloc(this._interactor) : super(const ChatCallState()) {
    on<ChatCallOnCreatingRoom>(_chatCallOnCreatingRoom);
    on<ChatCallOnJoiningRoom>(_chatCallOnJoiningRoom);
    on<ChatCallOnEnableUserMediaStream>(_chatCallOnEnableUserMediaStream);
    on<ChatCallOnEnableVideo>(_chatCallOnEnableVideo);
    on<ChatCallOnDisableVideo>(_chatCallOnDisableVideo);
    on<ChatCallOnEnableAudio>(_chatCallOnEnableAudio);
    on<ChatCallOnDisableAudio>(_chatCallOnDisableAudio);
    on<ChatCallOnHandUp>(_chatCallOnHandUp);
  }

  Future<void> _chatCallOnCreatingRoom(
      ChatCallOnCreatingRoom event, Emitter<ChatCallState> emit) async {
    await _createPeerConnection(emit);

    final offer = await state.peerConnection!.createOffer();
    final roomId = await _interactor.createRoom(offer: offer);
    _registerPeerConnectionListeners(roomId, emit);

    state.localStream?.getTracks().forEach((track) {
      state.peerConnection?.addTrack(track, state.localStream!);
    });

    Logger.printGreen(
      message: 'Room $roomId created with offer',
      filename: 'webrtc_cubit',
      method: 'createRoom',
      line: 39,
    );
    emit(state.copyWith(roomId: roomId));

    await state.peerConnection!.setLocalDescription(offer);

    emit(state.copyWith(subscriptions: [
      _interactor.getRoomDataStream(roomId: roomId).listen((answer) async {
        if (answer != null) {
          state.peerConnection?.setRemoteDescription(answer);
        } else {
          if (state.remoteStream != null) {
            emit(const ChatCallState());
          }
        }
      }),
      _interactor
          .getCandidatesAddedToRoomStream(roomId: roomId, listenCaller: false)
          .listen(
        (candidates) {
          for (final candidate in candidates) {
            state.peerConnection?.addCandidate(candidate);
          }
        },
      ),
    ]));
  }

  Future<void> _chatCallOnJoiningRoom(
      ChatCallOnJoiningRoom event, Emitter<ChatCallState> emit) async {
    final sessionDescription =
        await _interactor.getRoomOfferIfExists(roomId: event.roomId);

    if (sessionDescription != null) {
      await _createPeerConnection(emit);

      _registerPeerConnectionListeners(event.roomId, emit);

      state.localStream?.getTracks().forEach((track) {
        state.peerConnection!.addTrack(track, state.localStream!);
      });

      await state.peerConnection!.setRemoteDescription(sessionDescription);
      final answer = await state.peerConnection!.createAnswer();
      Logger.printYellow(
        message: 'Answer (Session Description Protocol package) created',
        filename: 'webrtc_cubit',
        method: 'joinRoom',
        line: 82,
      );

      await state.peerConnection!.setLocalDescription(answer);
      await _interactor.setAnswer(roomId: event.roomId, answer: answer);

      emit(state.copyWith(
        subscriptions: [
          _interactor
              .getCandidatesAddedToRoomStream(
                  roomId: event.roomId, listenCaller: true)
              .listen(
            (candidates) {
              for (final candidate in candidates) {
                state.peerConnection?.addCandidate(candidate);
              }
            },
          ),
          _interactor.getRoomDataStream(roomId: event.roomId).listen(
            (answer) async {
              if (answer == null) {
                emit(const ChatCallState());
              }
            },
          ),
        ],
      ));
    }
  }

  Future<void> _chatCallOnEnableUserMediaStream(
      ChatCallOnEnableUserMediaStream event,
      Emitter<ChatCallState> emit) async {
    var stream = await navigator.mediaDevices
        .getUserMedia({'video': true, 'audio': true});
    emit(
      state.copyWith(
        localStream: stream,
        currentUserShown: true,
      ),
    );
  }

  void _chatCallOnEnableVideo(
      ChatCallOnEnableVideo event, Emitter<ChatCallState> emit) {
    if (state.videoDisabled) {
      state.localStream
          ?.getVideoTracks()
          .forEach((track) => track.enabled = true);
      emit(state.copyWith(videoDisabled: false));
    }
  }

  void _chatCallOnDisableVideo(
      ChatCallOnDisableVideo event, Emitter<ChatCallState> emit) {
    if (!state.videoDisabled) {
      state.localStream
          ?.getVideoTracks()
          .forEach((track) => track.enabled = false);
      emit(state.copyWith(videoDisabled: true));
    }
  }

  void _chatCallOnEnableAudio(
      ChatCallOnEnableAudio event, Emitter<ChatCallState> emit) {
    if (state.audioDisabled) {
      state.localStream
          ?.getAudioTracks()
          .forEach((track) => track.enabled = true);
      emit(state.copyWith(audioDisabled: false));
    }
  }

  void _chatCallOnDisableAudio(
      ChatCallOnDisableAudio event, Emitter<ChatCallState> emit) {
    if (!state.audioDisabled) {
      state.localStream
          ?.getAudioTracks()
          .forEach((track) => track.enabled = false);
      emit(state.copyWith(audioDisabled: true));
    }
  }

  Future<void> _chatCallOnHandUp(
      ChatCallOnHandUp event, Emitter<ChatCallState> emit) async {
    final tracks = event.localVideo.srcObject!.getTracks();
    for (var track in tracks) {
      track.stop();
    }

    if (state.remoteStream != null) {
      state.remoteStream!.getTracks().forEach((track) => track.stop());
    }
    if (state.peerConnection != null) state.peerConnection!.close();

    if (state.roomId != null) {
      _interactor.deleteRoom(roomId: state.roomId!);
    }

    state.localStream?.dispose();
    state.remoteStream?.dispose();

    for (final subs in state.subscriptions) {
      subs.cancel();
    }

    emit(const ChatCallState());
  }

  Future<void> _createPeerConnection(Emitter<ChatCallState> emit) async {
    final peerConnection = await createPeerConnection({
      'iceServers': [
        {
          'urls': [
            'stun:stun1.l.google.com:19302',
            'stun:stun2.l.google.com:19302'
          ]
        }
      ]
    });
    Logger.printGreen(
      message: 'Peer Connection created',
      filename: 'webrtc_cubit',
      method: 'createRoom',
      line: 115,
    );
    emit(state.copyWith(peerConnection: peerConnection));
  }

  void _registerPeerConnectionListeners(
      String roomId, Emitter<ChatCallState> emit) {
    state.peerConnection!.onIceCandidate = (candidate) {
      Logger.printCyan(
        message: 'ICE candidate received: ${candidate.candidate}',
        filename: 'webrtc_cubit',
        method: 'joinRoom(onIceCandidate)',
        line: 190,
      );
      _interactor.addCandidateToRoom(roomId: roomId, candidate: candidate);
    };

    state.peerConnection!.onAddStream = (stream) {
      Logger.printBlue(
        message: 'Remote stream added',
        filename: 'webrtc_cubit',
        method: '_registerPeerConnectionListeners',
        line: 200,
      );
      emit(state.copyWith(remoteStream: stream, companionShown: true));
    };

    state.peerConnection!.onTrack = (event) {
      Logger.printCyan(
        message: 'Track is added to the connection',
        filename: 'webrtc_cubit',
        method: 'joinRoom(onTrack)',
        line: 210,
      );
      event.streams[0]
          .getTracks()
          .forEach((track) => state.remoteStream?.addTrack(track));
    };
  }
}
