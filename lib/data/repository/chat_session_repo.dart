import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_database_core.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/models/chat/chat_session.dart';

@injectable
class ChatSessionFirestoreRepo extends FirebaseFirestoreCore<ChatSessionModel> {
  ChatSessionFirestoreRepo() : super(pathCollection: 'chat_session');

  @override
  fromJson(Map<String, dynamic> json) {
    return ChatSessionModel.fromJson(json);
  }
}

@injectable
class ChatSessionDatabaseRepo extends FirebaseDatabaseCore<ChatSessionModel> {
  ChatSessionDatabaseRepo() : super(pathCollection: 'chat_session');

  @override
  fromJson(Map<String, dynamic> json) {
    return ChatSessionModel.fromJson(json);
  }
}
