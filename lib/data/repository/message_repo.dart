import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_database_core.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/models/chat/message.dart';

@injectable
class MessageFirestoreRepo extends FirebaseFirestoreCore<MessageModel> {
  MessageFirestoreRepo() : super(pathCollection: 'message');

  @override
  fromJson(Map<String, dynamic> json) {
    return MessageModel.fromJson(json);
  }
}

@injectable
class MessageDatabaseRepo extends FirebaseDatabaseCore<MessageModel> {
  MessageDatabaseRepo() : super(pathCollection: '');

  @override
  fromJson(Map<String, dynamic> json) {
    return MessageModel.fromJson(json);
  }
}
