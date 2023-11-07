import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onSignOut() = AuthOnSignOut;

  const factory AuthEvent.onSignUp() = AuthOnSignUp;

  const factory AuthEvent.onSignIn() = AuthOnSignIn;

  const factory AuthEvent.onChangeDataSignIn(
      {String? email, String? password}) = AuthOnChangeDataSignIn;

  const factory AuthEvent.onChangeDataSignUp(
      {String? email, String? password, String? name}) = AuthOnChangeDataSignUp;
}
