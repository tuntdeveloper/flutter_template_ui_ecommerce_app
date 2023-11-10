import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stylish/models/auth/user.dart';
import 'package:stylish/models/chat/chat_session.dart';
import 'package:stylish/models/chat/message.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default(false) bool isLoading,
    @Default(<UserModel>[]) List<UserModel> contacts,
    @Default(<ChatSessionModel>[]) List<ChatSessionModel> chatSessions,
    @Default(<MessageModel>[]) List<MessageModel> messages,
    String? chatSessionId,
    String? chatSessionIdDraft,
    ChatStateAction? action,
  }) = _ChatState;
}

@freezed
class ChatStateAction with _$ChatStateAction {
  const factory ChatStateAction.onCreatedNewChatSession() =
      ChatActionOnCreatedNewChatSession;

  const factory ChatStateAction.onCreateNewDraftChatSessionSuccess() =
      ChatOnCreateNewDraftChatSessionSuccess;
}
