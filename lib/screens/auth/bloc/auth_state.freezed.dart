// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  AuthAction? get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? email,
      String? password,
      String? name,
      AuthAction? actions});

  $AuthActionCopyWith<$Res>? get actions;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as AuthAction?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthActionCopyWith<$Res>? get actions {
    if (_value.actions == null) {
      return null;
    }

    return $AuthActionCopyWith<$Res>(_value.actions!, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? email,
      String? password,
      String? name,
      AuthAction? actions});

  @override
  $AuthActionCopyWith<$Res>? get actions;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as AuthAction?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isLoading = false,
      this.email,
      this.password,
      this.name,
      this.actions});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;
  @override
  final AuthAction? actions;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, email: $email, password: $password, name: $name, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.actions, actions) || other.actions == actions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, email, password, name, actions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final String? email,
      final String? password,
      final String? name,
      final AuthAction? actions}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get name;
  @override
  AuthAction? get actions;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignInSuccess,
    required TResult Function() onSignInFail,
    required TResult Function() onSignUpSuccess,
    required TResult Function() onSignUpFail,
    required TResult Function() onSignOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignInSuccess,
    TResult? Function()? onSignInFail,
    TResult? Function()? onSignUpSuccess,
    TResult? Function()? onSignUpFail,
    TResult? Function()? onSignOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignInSuccess,
    TResult Function()? onSignInFail,
    TResult Function()? onSignUpSuccess,
    TResult Function()? onSignUpFail,
    TResult Function()? onSignOutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignInSuccess value) onSignInSuccess,
    required TResult Function(AuthOnSignInFail value) onSignInFail,
    required TResult Function(AuthOnSignUpSuccess value) onSignUpSuccess,
    required TResult Function(AuthOnSignUpFail value) onSignUpFail,
    required TResult Function(AuthOnSignOutSuccess value) onSignOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult? Function(AuthOnSignInFail value)? onSignInFail,
    TResult? Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult? Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult? Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult Function(AuthOnSignInFail value)? onSignInFail,
    TResult Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthActionCopyWith<$Res> {
  factory $AuthActionCopyWith(
          AuthAction value, $Res Function(AuthAction) then) =
      _$AuthActionCopyWithImpl<$Res, AuthAction>;
}

/// @nodoc
class _$AuthActionCopyWithImpl<$Res, $Val extends AuthAction>
    implements $AuthActionCopyWith<$Res> {
  _$AuthActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthOnSignInSuccessImplCopyWith<$Res> {
  factory _$$AuthOnSignInSuccessImplCopyWith(_$AuthOnSignInSuccessImpl value,
          $Res Function(_$AuthOnSignInSuccessImpl) then) =
      __$$AuthOnSignInSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignInSuccessImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$AuthOnSignInSuccessImpl>
    implements _$$AuthOnSignInSuccessImplCopyWith<$Res> {
  __$$AuthOnSignInSuccessImplCopyWithImpl(_$AuthOnSignInSuccessImpl _value,
      $Res Function(_$AuthOnSignInSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignInSuccessImpl implements AuthOnSignInSuccess {
  const _$AuthOnSignInSuccessImpl();

  @override
  String toString() {
    return 'AuthAction.onSignInSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthOnSignInSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignInSuccess,
    required TResult Function() onSignInFail,
    required TResult Function() onSignUpSuccess,
    required TResult Function() onSignUpFail,
    required TResult Function() onSignOutSuccess,
  }) {
    return onSignInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignInSuccess,
    TResult? Function()? onSignInFail,
    TResult? Function()? onSignUpSuccess,
    TResult? Function()? onSignUpFail,
    TResult? Function()? onSignOutSuccess,
  }) {
    return onSignInSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignInSuccess,
    TResult Function()? onSignInFail,
    TResult Function()? onSignUpSuccess,
    TResult Function()? onSignUpFail,
    TResult Function()? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignInSuccess != null) {
      return onSignInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignInSuccess value) onSignInSuccess,
    required TResult Function(AuthOnSignInFail value) onSignInFail,
    required TResult Function(AuthOnSignUpSuccess value) onSignUpSuccess,
    required TResult Function(AuthOnSignUpFail value) onSignUpFail,
    required TResult Function(AuthOnSignOutSuccess value) onSignOutSuccess,
  }) {
    return onSignInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult? Function(AuthOnSignInFail value)? onSignInFail,
    TResult? Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult? Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult? Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
  }) {
    return onSignInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult Function(AuthOnSignInFail value)? onSignInFail,
    TResult Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignInSuccess != null) {
      return onSignInSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignInSuccess implements AuthAction {
  const factory AuthOnSignInSuccess() = _$AuthOnSignInSuccessImpl;
}

/// @nodoc
abstract class _$$AuthOnSignInFailImplCopyWith<$Res> {
  factory _$$AuthOnSignInFailImplCopyWith(_$AuthOnSignInFailImpl value,
          $Res Function(_$AuthOnSignInFailImpl) then) =
      __$$AuthOnSignInFailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignInFailImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$AuthOnSignInFailImpl>
    implements _$$AuthOnSignInFailImplCopyWith<$Res> {
  __$$AuthOnSignInFailImplCopyWithImpl(_$AuthOnSignInFailImpl _value,
      $Res Function(_$AuthOnSignInFailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignInFailImpl implements AuthOnSignInFail {
  const _$AuthOnSignInFailImpl();

  @override
  String toString() {
    return 'AuthAction.onSignInFail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthOnSignInFailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignInSuccess,
    required TResult Function() onSignInFail,
    required TResult Function() onSignUpSuccess,
    required TResult Function() onSignUpFail,
    required TResult Function() onSignOutSuccess,
  }) {
    return onSignInFail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignInSuccess,
    TResult? Function()? onSignInFail,
    TResult? Function()? onSignUpSuccess,
    TResult? Function()? onSignUpFail,
    TResult? Function()? onSignOutSuccess,
  }) {
    return onSignInFail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignInSuccess,
    TResult Function()? onSignInFail,
    TResult Function()? onSignUpSuccess,
    TResult Function()? onSignUpFail,
    TResult Function()? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignInFail != null) {
      return onSignInFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignInSuccess value) onSignInSuccess,
    required TResult Function(AuthOnSignInFail value) onSignInFail,
    required TResult Function(AuthOnSignUpSuccess value) onSignUpSuccess,
    required TResult Function(AuthOnSignUpFail value) onSignUpFail,
    required TResult Function(AuthOnSignOutSuccess value) onSignOutSuccess,
  }) {
    return onSignInFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult? Function(AuthOnSignInFail value)? onSignInFail,
    TResult? Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult? Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult? Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
  }) {
    return onSignInFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult Function(AuthOnSignInFail value)? onSignInFail,
    TResult Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignInFail != null) {
      return onSignInFail(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignInFail implements AuthAction {
  const factory AuthOnSignInFail() = _$AuthOnSignInFailImpl;
}

/// @nodoc
abstract class _$$AuthOnSignUpSuccessImplCopyWith<$Res> {
  factory _$$AuthOnSignUpSuccessImplCopyWith(_$AuthOnSignUpSuccessImpl value,
          $Res Function(_$AuthOnSignUpSuccessImpl) then) =
      __$$AuthOnSignUpSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignUpSuccessImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$AuthOnSignUpSuccessImpl>
    implements _$$AuthOnSignUpSuccessImplCopyWith<$Res> {
  __$$AuthOnSignUpSuccessImplCopyWithImpl(_$AuthOnSignUpSuccessImpl _value,
      $Res Function(_$AuthOnSignUpSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignUpSuccessImpl implements AuthOnSignUpSuccess {
  const _$AuthOnSignUpSuccessImpl();

  @override
  String toString() {
    return 'AuthAction.onSignUpSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthOnSignUpSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignInSuccess,
    required TResult Function() onSignInFail,
    required TResult Function() onSignUpSuccess,
    required TResult Function() onSignUpFail,
    required TResult Function() onSignOutSuccess,
  }) {
    return onSignUpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignInSuccess,
    TResult? Function()? onSignInFail,
    TResult? Function()? onSignUpSuccess,
    TResult? Function()? onSignUpFail,
    TResult? Function()? onSignOutSuccess,
  }) {
    return onSignUpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignInSuccess,
    TResult Function()? onSignInFail,
    TResult Function()? onSignUpSuccess,
    TResult Function()? onSignUpFail,
    TResult Function()? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignUpSuccess != null) {
      return onSignUpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignInSuccess value) onSignInSuccess,
    required TResult Function(AuthOnSignInFail value) onSignInFail,
    required TResult Function(AuthOnSignUpSuccess value) onSignUpSuccess,
    required TResult Function(AuthOnSignUpFail value) onSignUpFail,
    required TResult Function(AuthOnSignOutSuccess value) onSignOutSuccess,
  }) {
    return onSignUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult? Function(AuthOnSignInFail value)? onSignInFail,
    TResult? Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult? Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult? Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
  }) {
    return onSignUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult Function(AuthOnSignInFail value)? onSignInFail,
    TResult Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignUpSuccess != null) {
      return onSignUpSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignUpSuccess implements AuthAction {
  const factory AuthOnSignUpSuccess() = _$AuthOnSignUpSuccessImpl;
}

/// @nodoc
abstract class _$$AuthOnSignUpFailImplCopyWith<$Res> {
  factory _$$AuthOnSignUpFailImplCopyWith(_$AuthOnSignUpFailImpl value,
          $Res Function(_$AuthOnSignUpFailImpl) then) =
      __$$AuthOnSignUpFailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignUpFailImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$AuthOnSignUpFailImpl>
    implements _$$AuthOnSignUpFailImplCopyWith<$Res> {
  __$$AuthOnSignUpFailImplCopyWithImpl(_$AuthOnSignUpFailImpl _value,
      $Res Function(_$AuthOnSignUpFailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignUpFailImpl implements AuthOnSignUpFail {
  const _$AuthOnSignUpFailImpl();

  @override
  String toString() {
    return 'AuthAction.onSignUpFail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthOnSignUpFailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignInSuccess,
    required TResult Function() onSignInFail,
    required TResult Function() onSignUpSuccess,
    required TResult Function() onSignUpFail,
    required TResult Function() onSignOutSuccess,
  }) {
    return onSignUpFail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignInSuccess,
    TResult? Function()? onSignInFail,
    TResult? Function()? onSignUpSuccess,
    TResult? Function()? onSignUpFail,
    TResult? Function()? onSignOutSuccess,
  }) {
    return onSignUpFail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignInSuccess,
    TResult Function()? onSignInFail,
    TResult Function()? onSignUpSuccess,
    TResult Function()? onSignUpFail,
    TResult Function()? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignUpFail != null) {
      return onSignUpFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignInSuccess value) onSignInSuccess,
    required TResult Function(AuthOnSignInFail value) onSignInFail,
    required TResult Function(AuthOnSignUpSuccess value) onSignUpSuccess,
    required TResult Function(AuthOnSignUpFail value) onSignUpFail,
    required TResult Function(AuthOnSignOutSuccess value) onSignOutSuccess,
  }) {
    return onSignUpFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult? Function(AuthOnSignInFail value)? onSignInFail,
    TResult? Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult? Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult? Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
  }) {
    return onSignUpFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult Function(AuthOnSignInFail value)? onSignInFail,
    TResult Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignUpFail != null) {
      return onSignUpFail(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignUpFail implements AuthAction {
  const factory AuthOnSignUpFail() = _$AuthOnSignUpFailImpl;
}

/// @nodoc
abstract class _$$AuthOnSignOutSuccessImplCopyWith<$Res> {
  factory _$$AuthOnSignOutSuccessImplCopyWith(_$AuthOnSignOutSuccessImpl value,
          $Res Function(_$AuthOnSignOutSuccessImpl) then) =
      __$$AuthOnSignOutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignOutSuccessImplCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res, _$AuthOnSignOutSuccessImpl>
    implements _$$AuthOnSignOutSuccessImplCopyWith<$Res> {
  __$$AuthOnSignOutSuccessImplCopyWithImpl(_$AuthOnSignOutSuccessImpl _value,
      $Res Function(_$AuthOnSignOutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignOutSuccessImpl implements AuthOnSignOutSuccess {
  const _$AuthOnSignOutSuccessImpl();

  @override
  String toString() {
    return 'AuthAction.onSignOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthOnSignOutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignInSuccess,
    required TResult Function() onSignInFail,
    required TResult Function() onSignUpSuccess,
    required TResult Function() onSignUpFail,
    required TResult Function() onSignOutSuccess,
  }) {
    return onSignOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignInSuccess,
    TResult? Function()? onSignInFail,
    TResult? Function()? onSignUpSuccess,
    TResult? Function()? onSignUpFail,
    TResult? Function()? onSignOutSuccess,
  }) {
    return onSignOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignInSuccess,
    TResult Function()? onSignInFail,
    TResult Function()? onSignUpSuccess,
    TResult Function()? onSignUpFail,
    TResult Function()? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignOutSuccess != null) {
      return onSignOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignInSuccess value) onSignInSuccess,
    required TResult Function(AuthOnSignInFail value) onSignInFail,
    required TResult Function(AuthOnSignUpSuccess value) onSignUpSuccess,
    required TResult Function(AuthOnSignUpFail value) onSignUpFail,
    required TResult Function(AuthOnSignOutSuccess value) onSignOutSuccess,
  }) {
    return onSignOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult? Function(AuthOnSignInFail value)? onSignInFail,
    TResult? Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult? Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult? Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
  }) {
    return onSignOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignInSuccess value)? onSignInSuccess,
    TResult Function(AuthOnSignInFail value)? onSignInFail,
    TResult Function(AuthOnSignUpSuccess value)? onSignUpSuccess,
    TResult Function(AuthOnSignUpFail value)? onSignUpFail,
    TResult Function(AuthOnSignOutSuccess value)? onSignOutSuccess,
    required TResult orElse(),
  }) {
    if (onSignOutSuccess != null) {
      return onSignOutSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignOutSuccess implements AuthAction {
  const factory AuthOnSignOutSuccess() = _$AuthOnSignOutSuccessImpl;
}
