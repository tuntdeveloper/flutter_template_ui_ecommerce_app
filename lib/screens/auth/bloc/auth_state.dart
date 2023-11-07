import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    String? email,
    String? password,
    String? name,
    AuthAction? actions,
  }) = _AuthState;
}

@freezed
class AuthAction with _$AuthAction {
  const factory AuthAction.onSignInSuccess() = AuthOnSignInSuccess;

  const factory AuthAction.onSignInFail() = AuthOnSignInFail;

  const factory AuthAction.onSignUpSuccess() = AuthOnSignUpSuccess;

  const factory AuthAction.onSignUpFail() = AuthOnSignUpFail;

  const factory AuthAction.onSignOutSuccess() = AuthOnSignOutSuccess;
}
