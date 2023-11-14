import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_call_event.freezed.dart';

@freezed
class ChatCallEvent with _$ChatCallEvent {
  const factory ChatCallEvent.onCreatingRoom() = ChatCallOnCreatingRoom;

  const factory ChatCallEvent.onJoiningRoom(String roomId) =
      ChatCallOnJoiningRoom;

  const factory ChatCallEvent.onEnableUserMediaStream() =
      ChatCallOnEnableUserMediaStream;

  const factory ChatCallEvent.onEnableVideo() = ChatCallOnEnableVideo;

  const factory ChatCallEvent.onDisableVideo() = ChatCallOnDisableVideo;

  const factory ChatCallEvent.onEnableAudio() = ChatCallOnEnableAudio;

  const factory ChatCallEvent.onDisableAudio() = ChatCallOnDisableAudio;

  const factory ChatCallEvent.onHandUp(RTCVideoRenderer localVideo) = ChatCallOnHandUp;
}
