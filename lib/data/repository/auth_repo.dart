import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_curd_core.dart';
import 'package:stylish/models/auth/user.dart';

@injectable
class UserRepo extends FirebaseCRUDCore<UserModel> {
  UserRepo() : super(pathCollection: 'user');

  @override
  fromJson(Map<String, dynamic> json) {
    return UserModel.fromJson(json);
  }
}
