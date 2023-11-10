import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_database_core.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/models/chat/message.dart';

@injectable
class MessageFireStoreRepo extends FirebaseFireStoreCore<MessageModel> {
  MessageFireStoreRepo() : super(pathCollection: 'message');

  @override
  fromJson(Map<String, dynamic> json) {
    return MessageModel.fromJson(json);
  }
}

@injectable
class MessageDatabaseRepo extends FirebaseDatabaseCore<MessageModel> {
  MessageDatabaseRepo() : super(pathCollection: 'message');

  @override
  fromJson(Map<String, dynamic> json) {
    return MessageModel.fromJson(json);
  }
}
