import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_curd_core.dart';
import 'package:stylish/models/chat/message.dart';

@injectable
class MessageRepo extends FirebaseCRUDCore<MessageModel> {
  MessageRepo() : super(pathCollection: 'message');

  @override
  fromJson(Map<String, dynamic> json) {
    return MessageModel.fromJson(json);
  }
}
