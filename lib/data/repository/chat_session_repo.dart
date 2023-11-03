import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_curd_core.dart';
import 'package:stylish/models/chat/chat_session.dart';

@injectable
class ChatSessionRepo extends FirebaseCRUDCore<ChatSessionModel> {
  ChatSessionRepo() : super(pathCollection: 'chat_session');

  @override
  fromJson(Map<String, dynamic> json) {
    return ChatSessionModel.fromJson(json);
  }
}
