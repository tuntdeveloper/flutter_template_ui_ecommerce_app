import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/data/local_db/local_db.dart';
import 'package:stylish/data/repository/auth_repo.dart';
import 'package:stylish/models/auth/user.dart';
import 'package:stylish/screens/auth/bloc/auth_event.dart';
import 'package:stylish/screens/auth/bloc/auth_state.dart';
import 'package:stylish/screens/auth/signin_screen.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._userRepo, this._localDbService) : super(const AuthState()) {
    on<AuthOnSignUp>(_authOnSignUp);
    on<AuthOnSignIn>(_authOnSignIn);
    on<AuthOnSignOut>(_authOnSignOut);
    on<AuthOnChangeDataSignUp>(_authOnChangeDataSignUp);
    on<AuthOnChangeDataSignIn>(_authOnChangeDataSignIn);
  }

  final UserRepo _userRepo;
  final LocalDbService _localDbService;

  Future<void> _authOnSignIn(
      AuthOnSignIn event, Emitter<AuthState> emit) async {
    try {
      if (state.email == null || state.password == null) return;

      final existUser = await _userRepo.get(multipleFilters: [
        FilterData('email', state.email ?? ''),
        FilterData('hashPassword', state.password ?? ''),
      ]);

      if (existUser != null) {
        await _localDbService.saveUserInfo(existUser);
        emit(state.copyWith(actions: const AuthOnSignInSuccess()));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _authOnSignOut(
      AuthOnSignOut event, Emitter<AuthState> emit) async {
    await _localDbService.clear();

    emit(state.copyWith(actions: const AuthOnSignOutSuccess()));
  }

  Future<void> _authOnSignUp(
      AuthOnSignUp event, Emitter<AuthState> emit) async {
    try {
      if (state.email == null || state.password == null || state.name == null) {
        return;
      }

      emit(state.copyWith(isLoading: true));

      final userModel = UserModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        name: state.name,
        email: state.email,
        hashPassword: state.password,
      );

      await _userRepo.create(data: userModel.toJson());

      await _localDbService.saveUserInfo(userModel);

      emit(state.copyWith(
        isLoading: false,
        actions: const AuthOnSignUpSuccess(),
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        actions: const AuthOnSignUpFail(),
      ));

      debugPrint(e.toString());
    }
  }

  Future<void> _authOnChangeDataSignUp(
      AuthOnChangeDataSignUp event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        email: event.email ?? state.email,
        password: event.password ?? state.password,
        name: event.name ?? state.name,
      ),
    );
  }

  Future<void> _authOnChangeDataSignIn(
      AuthOnChangeDataSignIn event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        email: event.email ?? state.email,
        password: event.password ?? state.password,
      ),
    );
  }
}
