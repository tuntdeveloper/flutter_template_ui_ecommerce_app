import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onFetchingContacts() = ChatOnFetchingContacts;
  const factory ChatEvent.onFetchingChatSessions() = ChatOnFetchingChatSessions;
  const factory ChatEvent.onFetchingMessages() = ChatOnFetchingMessages;

  const factory ChatEvent.onCreatingNewChat({String? chatPersonId}) =
      ChatOnCreatingNewChat;

  const factory ChatEvent.onListenMessage({String? chatPersonId}) =
      ChatOnListenMessage;

  const factory ChatEvent.onDisposeMessageScreen() = ChatOnDisposeMessageScreen;
}
