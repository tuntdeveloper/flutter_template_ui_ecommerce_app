import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/data/firebase/firebase_database_core.dart';
import 'package:stylish/data/local_db/local_db.dart';
import 'package:stylish/data/repository/auth_repo.dart';
import 'package:stylish/data/repository/chat_session_repo.dart';
import 'package:stylish/data/repository/message_repo.dart';
import 'package:stylish/extension/object_extension.dart';
import 'package:stylish/models/chat/message.dart';
import 'package:stylish/screens/chat/bloc/chat_event.dart';
import 'package:stylish/screens/chat/bloc/chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(
    this._userRepo,
    this._chatSessionFirestoreRepo,
    this._messageFirestoreRepo,
    this._chatSessionDatabaseRepo,
    this._messageDatabaseRepo,
  ) : super(const ChatState()) {
    on<ChatOnFetchingContacts>(_chatOnFetchingContacts);
    on<ChatOnFetchingChatSessions>(_chatOnFetchingChatSessions);
    on<ChatOnCreatingNewChat>(_chatOnCreatingNewChat);
    on<ChatOnListenMessage>(_chatOnListenMessage);
    on<ChatOnDisposeMessageScreen>(_chatOnDisposeMessageScreen);
  }

  final UserRepo _userRepo;
  final ChatSessionFirestoreRepo _chatSessionFirestoreRepo;
  final ChatSessionDatabaseRepo _chatSessionDatabaseRepo;
  final MessageFirestoreRepo _messageFirestoreRepo;
  final MessageDatabaseRepo _messageDatabaseRepo;

  Future<void> _chatOnFetchingChatSessions(
      ChatOnFetchingChatSessions event, Emitter<ChatState> emit) async {
    try {
      await for (final value in _messageDatabaseRepo.onChildCreated(
        filters: [
          FilterData('chat_session', 'chat_session'),
        ],
      )) {
        if (value.snapshot.exists && value.snapshot.value != null) {
          final messageJson = value.snapshot.value.toJson;

          final message = MessageModel.fromJson(messageJson);
          emit(state.copyWith(messages: [...state.messages, message]));
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _chatOnDisposeMessageScreen(
      ChatOnDisposeMessageScreen event, Emitter<ChatState> emit) {
    emit(ChatState(contacts: state.contacts));
  }

  Future<void> _chatOnListenMessage(
      ChatOnListenMessage event, Emitter<ChatState> emit) async {
    try {
      await for (final value in _messageDatabaseRepo.onChildCreated(
        filters: [
          FilterData('chat_session', 'chat_session'),
          FilterData('chatPersonId', event.chatPersonId ?? '')
        ],
      )) {
        if (value.snapshot.exists && value.snapshot.value != null) {
          final messageJson = value.snapshot.value.toJson;

          final message = MessageModel.fromJson(messageJson);
          emit(state.copyWith(messages: [...state.messages, message]));
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _chatOnCreatingNewChat(
      ChatOnCreatingNewChat event, Emitter<ChatState> emit) async {
    final _userId = getIt<LocalDbService>().getUserInfo().id;

    final _messageId = DateTime.now().microsecondsSinceEpoch.toString();

    await _messageDatabaseRepo.create(
      filters: [
        FilterData('chat_session', 'chat_session'),
        FilterData('chatPersonId', event.chatPersonId ?? ''),
        FilterData('messageId', _messageId),
      ],
      data: MessageModel(
        id: _messageId,
        sentByUserId: _userId,
        message: 'This is first message',
        createdAt: DateTime.now(),
      ).toJson(),
    );
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
