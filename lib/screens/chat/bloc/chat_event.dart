import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onFetchingContacts() = ChatOnFetchingContacts;

  const factory ChatEvent.onFetchingChatSessions() = ChatOnFetchingChatSessions;

  const factory ChatEvent.onFetchingMessages() = ChatOnFetchingMessages;

  const factory ChatEvent.onCreatingNewChatSession(
          {@Default(<String?>[]) List<String?> chatPersonIds}) =
      ChatOnCreatingNewChatSession;

  const factory ChatEvent.onCreatingNewMessage(
      {required String message,
      String? chatSessionId,
      @Default([]) List<String?> chatPersonIds,
}) = ChatOnCreatingNewMessage;

  const factory ChatEvent.onListenMessage({String? chatSessionId}) =
      ChatOnListenMessage;

  const factory ChatEvent.onDisposeMessageScreen() = ChatOnDisposeMessageScreen;
}
