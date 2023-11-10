import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/data/local_db/local_db.dart';
import 'package:stylish/data/repository/auth_repo.dart';
import 'package:stylish/data/repository/chat_session_repo.dart';
import 'package:stylish/data/repository/message_repo.dart';
import 'package:stylish/extension/object_extension.dart';
import 'package:stylish/models/auth/user.dart';
import 'package:stylish/models/chat/chat_session.dart';
import 'package:stylish/models/chat/message.dart';
import 'package:stylish/screens/chat/bloc/chat_event.dart';
import 'package:stylish/screens/chat/bloc/chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(
    this._userRepo,
    this._chatSessionFireStoreRepo,
    this._messageFireStoreRepo,
    this._chatSessionDatabaseRepo,
    this._messageDatabaseRepo,
  ) : super(const ChatState()) {
    on<ChatOnFetchingContacts>(_chatOnFetchingContacts);
    on<ChatOnFetchingChatSessions>(_chatOnFetchingChatSessions);
    on<ChatOnCreatingNewChatSession>(_chatOnCreatingNewChatSession);
    on<ChatOnCreatingNewMessage>(_chatOnCreatingNewMessage);
    on<ChatOnListenMessage>(_chatOnListenMessage);
    on<ChatOnDisposeMessageScreen>(_chatOnDisposeMessageScreen);
  }

  final UserRepo _userRepo;
  final ChatSessionFireStoreRepo _chatSessionFireStoreRepo;
  final ChatSessionDatabaseRepo _chatSessionDatabaseRepo;
  final MessageFireStoreRepo _messageFireStoreRepo;
  final MessageDatabaseRepo _messageDatabaseRepo;

  Future<void> _chatOnFetchingChatSessions(
      ChatOnFetchingChatSessions event, Emitter<ChatState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));

      final currentUser = await _userRepo.get(
        multipleFilters: [
          FilterData('id', getIt<LocalDbService>().getUserInfo().id ?? '')
        ],
      );

      final chatSessions = <ChatSessionModel>[];

      for (final chatSessionId in currentUser?.chatSessionIds ?? <String>[]) {
        final chatSession =
            await _chatSessionFireStoreRepo.get(multipleFilters: [
          FilterData('id', chatSessionId),
        ]);

        if (chatSession != null) {
          chatSessions.add(chatSession);
        }
      }

      emit(state.copyWith(chatSessions: chatSessions, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _chatOnDisposeMessageScreen(
      ChatOnDisposeMessageScreen event, Emitter<ChatState> emit) {
    emit(state
        .copyWith(messages: [], chatSessionId: null, chatSessionIdDraft: null));
  }

  Future<void> _chatOnListenMessage(
      ChatOnListenMessage event, Emitter<ChatState> emit) async {
    emit(state.copyWith(chatSessionId: event.chatSessionId));

    // try {
    //   await for (final value in _messageDatabaseRepo.onChildCreated(
    //     filters: [
    //       FilterData('chat_session', 'chat_session'),
    //       FilterData('chatPersonId', event.chatPersonId ?? '')
    //     ],
    //   )) {
    //     if (value.snapshot.exists && value.snapshot.value != null) {
    //       final messageJson = value.snapshot.value.toJson;
    //       final message = MessageModel.fromJson(messageJson);
    //
    //       emit(state.copyWith(messages: [message, ...state.messages]));
    //     }
    //   }
    // } catch (e) {
    //   debugPrint(e.toString());
    // }
  }

  Future<void> _chatOnCreatingNewChatSession(
      ChatOnCreatingNewChatSession event, Emitter<ChatState> emit) async {
    try {
      final currentActiveChatSessionId =
          DateTime.now().microsecondsSinceEpoch.toString();

      final currentUserId = getIt<LocalDbService>().getUserInfo().id;
      final chatUserId = event.chatPersonIds.first;

      final currentUserJson = await FirebaseFirestore.instance
          .collection('user')
          .where('id', isEqualTo: currentUserId)
          .get();

      final chatUserJson = await FirebaseFirestore.instance
          .collection('user')
          .where('id', isEqualTo: chatUserId)
          .get();

      final currentUser = UserModel.fromJson(currentUserJson.docs.first.data());

      final chatUser = UserModel.fromJson(chatUserJson.docs.first.data());

      await _userRepo.update(
          id: currentUserId ?? '',
          data: currentUser.copyWith(chatSessionIds: [
            ...currentUser.chatSessionIds,
            currentActiveChatSessionId
          ]).toJson());

      await _userRepo.update(
        id: chatUserId ?? '',
        data: chatUser.copyWith(chatSessionIds: [
          ...chatUser.chatSessionIds,
          currentActiveChatSessionId
        ]).toJson(),
      );

      await _chatSessionFireStoreRepo.create(
        data: ChatSessionModel(
          id: currentActiveChatSessionId,
          createdAt: DateTime.now(),
          chatUserIds: [currentUserId, chatUserId],
          title: chatUser.name,
        ).toJson(),
      );

      emit(state.copyWith(chatSessionIdDraft: currentActiveChatSessionId));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _chatOnCreatingNewMessage(
      ChatOnCreatingNewMessage event, Emitter<ChatState> emit) async {
    try {
      if (state.chatSessionId == null) {
        await _chatOnCreatingNewChatSession(
            ChatOnCreatingNewChatSession(chatPersonIds: event.chatPersonIds),
            emit);

        emit(state.copyWith(
            chatSessionId: state.chatSessionIdDraft, chatSessionIdDraft: null));
      }

      final _messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final _userId = getIt<LocalDbService>().getUserInfo().id;

      await _chatSessionDatabaseRepo.create(
        filters: [
          FilterData('chatSessionId', state.chatSessionId ?? ''),
          FilterData('messageId', _messageId),
        ],
        data: MessageModel(
          id: _messageId,
          sentByUserId: _userId,
          message: event.message.trimRight().trimLeft(),
          createdAt: DateTime.now(),
        ).toJson(),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _chatOnFetchingContacts(
      ChatOnFetchingContacts event, Emitter<ChatState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _userRepo.getAll();

    emit(state.copyWith(
      contacts: result,
      isLoading: false,
    ));
  }
}
