import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/models/auth/user.dart';

@injectable
class UserRepo extends FirebaseFireStoreCore<UserModel> {
  UserRepo() : super(pathCollection: 'user');

  @override
  fromJson(Map<String, dynamic> json) {
    return UserModel.fromJson(json);
  }
}
