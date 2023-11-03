import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/models/auth/user.dart';

@module
abstract class RegisterModule {
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@injectable
class LocalDbService {
  Future<bool> clear() async {
    return getIt<SharedPreferences>().clear();
  }

  Future<void> saveUserInfo(UserModel user) {
    return getIt<SharedPreferences>()
        .setString(LocalDbConstant.userKey, jsonEncode(user));
  }

  UserModel getUserInfo() {
    return UserModel.fromJson(jsonDecode(
        getIt<SharedPreferences>().getString(LocalDbConstant.userKey) ?? ''));
  }
}

class LocalDbConstant {
  static const userKey = 'user';
}
