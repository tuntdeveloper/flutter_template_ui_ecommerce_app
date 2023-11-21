// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignOut,
    required TResult Function() onSignUp,
    required TResult Function() onSignIn,
    required TResult Function(String? email, String? password)
        onChangeDataSignIn,
    required TResult Function(String? email, String? password, String? name)
        onChangeDataSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignOut,
    TResult? Function()? onSignUp,
    TResult? Function()? onSignIn,
    TResult? Function(String? email, String? password)? onChangeDataSignIn,
    TResult? Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignOut,
    TResult Function()? onSignUp,
    TResult Function()? onSignIn,
    TResult Function(String? email, String? password)? onChangeDataSignIn,
    TResult Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignOut value) onSignOut,
    required TResult Function(AuthOnSignUp value) onSignUp,
    required TResult Function(AuthOnSignIn value) onSignIn,
    required TResult Function(AuthOnChangeDataSignIn value) onChangeDataSignIn,
    required TResult Function(AuthOnChangeDataSignUp value) onChangeDataSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignOut value)? onSignOut,
    TResult? Function(AuthOnSignUp value)? onSignUp,
    TResult? Function(AuthOnSignIn value)? onSignIn,
    TResult? Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult? Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignOut value)? onSignOut,
    TResult Function(AuthOnSignUp value)? onSignUp,
    TResult Function(AuthOnSignIn value)? onSignIn,
    TResult Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthOnSignOutImplCopyWith<$Res> {
  factory _$$AuthOnSignOutImplCopyWith(
          _$AuthOnSignOutImpl value, $Res Function(_$AuthOnSignOutImpl) then) =
      __$$AuthOnSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthOnSignOutImpl>
    implements _$$AuthOnSignOutImplCopyWith<$Res> {
  __$$AuthOnSignOutImplCopyWithImpl(
      _$AuthOnSignOutImpl _value, $Res Function(_$AuthOnSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignOutImpl implements AuthOnSignOut {
  const _$AuthOnSignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.onSignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthOnSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignOut,
    required TResult Function() onSignUp,
    required TResult Function() onSignIn,
    required TResult Function(String? email, String? password)
        onChangeDataSignIn,
    required TResult Function(String? email, String? password, String? name)
        onChangeDataSignUp,
  }) {
    return onSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignOut,
    TResult? Function()? onSignUp,
    TResult? Function()? onSignIn,
    TResult? Function(String? email, String? password)? onChangeDataSignIn,
    TResult? Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
  }) {
    return onSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignOut,
    TResult Function()? onSignUp,
    TResult Function()? onSignIn,
    TResult Function(String? email, String? password)? onChangeDataSignIn,
    TResult Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onSignOut != null) {
      return onSignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignOut value) onSignOut,
    required TResult Function(AuthOnSignUp value) onSignUp,
    required TResult Function(AuthOnSignIn value) onSignIn,
    required TResult Function(AuthOnChangeDataSignIn value) onChangeDataSignIn,
    required TResult Function(AuthOnChangeDataSignUp value) onChangeDataSignUp,
  }) {
    return onSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignOut value)? onSignOut,
    TResult? Function(AuthOnSignUp value)? onSignUp,
    TResult? Function(AuthOnSignIn value)? onSignIn,
    TResult? Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult? Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
  }) {
    return onSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignOut value)? onSignOut,
    TResult Function(AuthOnSignUp value)? onSignUp,
    TResult Function(AuthOnSignIn value)? onSignIn,
    TResult Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onSignOut != null) {
      return onSignOut(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignOut implements AuthEvent {
  const factory AuthOnSignOut() = _$AuthOnSignOutImpl;
}

/// @nodoc
abstract class _$$AuthOnSignUpImplCopyWith<$Res> {
  factory _$$AuthOnSignUpImplCopyWith(
          _$AuthOnSignUpImpl value, $Res Function(_$AuthOnSignUpImpl) then) =
      __$$AuthOnSignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthOnSignUpImpl>
    implements _$$AuthOnSignUpImplCopyWith<$Res> {
  __$$AuthOnSignUpImplCopyWithImpl(
      _$AuthOnSignUpImpl _value, $Res Function(_$AuthOnSignUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignUpImpl implements AuthOnSignUp {
  const _$AuthOnSignUpImpl();

  @override
  String toString() {
    return 'AuthEvent.onSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthOnSignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignOut,
    required TResult Function() onSignUp,
    required TResult Function() onSignIn,
    required TResult Function(String? email, String? password)
        onChangeDataSignIn,
    required TResult Function(String? email, String? password, String? name)
        onChangeDataSignUp,
  }) {
    return onSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignOut,
    TResult? Function()? onSignUp,
    TResult? Function()? onSignIn,
    TResult? Function(String? email, String? password)? onChangeDataSignIn,
    TResult? Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
  }) {
    return onSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignOut,
    TResult Function()? onSignUp,
    TResult Function()? onSignIn,
    TResult Function(String? email, String? password)? onChangeDataSignIn,
    TResult Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignOut value) onSignOut,
    required TResult Function(AuthOnSignUp value) onSignUp,
    required TResult Function(AuthOnSignIn value) onSignIn,
    required TResult Function(AuthOnChangeDataSignIn value) onChangeDataSignIn,
    required TResult Function(AuthOnChangeDataSignUp value) onChangeDataSignUp,
  }) {
    return onSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignOut value)? onSignOut,
    TResult? Function(AuthOnSignUp value)? onSignUp,
    TResult? Function(AuthOnSignIn value)? onSignIn,
    TResult? Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult? Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
  }) {
    return onSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignOut value)? onSignOut,
    TResult Function(AuthOnSignUp value)? onSignUp,
    TResult Function(AuthOnSignIn value)? onSignIn,
    TResult Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignUp implements AuthEvent {
  const factory AuthOnSignUp() = _$AuthOnSignUpImpl;
}

/// @nodoc
abstract class _$$AuthOnSignInImplCopyWith<$Res> {
  factory _$$AuthOnSignInImplCopyWith(
          _$AuthOnSignInImpl value, $Res Function(_$AuthOnSignInImpl) then) =
      __$$AuthOnSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthOnSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthOnSignInImpl>
    implements _$$AuthOnSignInImplCopyWith<$Res> {
  __$$AuthOnSignInImplCopyWithImpl(
      _$AuthOnSignInImpl _value, $Res Function(_$AuthOnSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthOnSignInImpl implements AuthOnSignIn {
  const _$AuthOnSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.onSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthOnSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignOut,
    required TResult Function() onSignUp,
    required TResult Function() onSignIn,
    required TResult Function(String? email, String? password)
        onChangeDataSignIn,
    required TResult Function(String? email, String? password, String? name)
        onChangeDataSignUp,
  }) {
    return onSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignOut,
    TResult? Function()? onSignUp,
    TResult? Function()? onSignIn,
    TResult? Function(String? email, String? password)? onChangeDataSignIn,
    TResult? Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
  }) {
    return onSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignOut,
    TResult Function()? onSignUp,
    TResult Function()? onSignIn,
    TResult Function(String? email, String? password)? onChangeDataSignIn,
    TResult Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onSignIn != null) {
      return onSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignOut value) onSignOut,
    required TResult Function(AuthOnSignUp value) onSignUp,
    required TResult Function(AuthOnSignIn value) onSignIn,
    required TResult Function(AuthOnChangeDataSignIn value) onChangeDataSignIn,
    required TResult Function(AuthOnChangeDataSignUp value) onChangeDataSignUp,
  }) {
    return onSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignOut value)? onSignOut,
    TResult? Function(AuthOnSignUp value)? onSignUp,
    TResult? Function(AuthOnSignIn value)? onSignIn,
    TResult? Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult? Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
  }) {
    return onSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignOut value)? onSignOut,
    TResult Function(AuthOnSignUp value)? onSignUp,
    TResult Function(AuthOnSignIn value)? onSignIn,
    TResult Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onSignIn != null) {
      return onSignIn(this);
    }
    return orElse();
  }
}

abstract class AuthOnSignIn implements AuthEvent {
  const factory AuthOnSignIn() = _$AuthOnSignInImpl;
}

/// @nodoc
abstract class _$$AuthOnChangeDataSignInImplCopyWith<$Res> {
  factory _$$AuthOnChangeDataSignInImplCopyWith(
          _$AuthOnChangeDataSignInImpl value,
          $Res Function(_$AuthOnChangeDataSignInImpl) then) =
      __$$AuthOnChangeDataSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$AuthOnChangeDataSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthOnChangeDataSignInImpl>
    implements _$$AuthOnChangeDataSignInImplCopyWith<$Res> {
  __$$AuthOnChangeDataSignInImplCopyWithImpl(
      _$AuthOnChangeDataSignInImpl _value,
      $Res Function(_$AuthOnChangeDataSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$AuthOnChangeDataSignInImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthOnChangeDataSignInImpl implements AuthOnChangeDataSignIn {
  const _$AuthOnChangeDataSignInImpl({this.email, this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'AuthEvent.onChangeDataSignIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthOnChangeDataSignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthOnChangeDataSignInImplCopyWith<_$AuthOnChangeDataSignInImpl>
      get copyWith => __$$AuthOnChangeDataSignInImplCopyWithImpl<
          _$AuthOnChangeDataSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignOut,
    required TResult Function() onSignUp,
    required TResult Function() onSignIn,
    required TResult Function(String? email, String? password)
        onChangeDataSignIn,
    required TResult Function(String? email, String? password, String? name)
        onChangeDataSignUp,
  }) {
    return onChangeDataSignIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignOut,
    TResult? Function()? onSignUp,
    TResult? Function()? onSignIn,
    TResult? Function(String? email, String? password)? onChangeDataSignIn,
    TResult? Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
  }) {
    return onChangeDataSignIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignOut,
    TResult Function()? onSignUp,
    TResult Function()? onSignIn,
    TResult Function(String? email, String? password)? onChangeDataSignIn,
    TResult Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onChangeDataSignIn != null) {
      return onChangeDataSignIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignOut value) onSignOut,
    required TResult Function(AuthOnSignUp value) onSignUp,
    required TResult Function(AuthOnSignIn value) onSignIn,
    required TResult Function(AuthOnChangeDataSignIn value) onChangeDataSignIn,
    required TResult Function(AuthOnChangeDataSignUp value) onChangeDataSignUp,
  }) {
    return onChangeDataSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignOut value)? onSignOut,
    TResult? Function(AuthOnSignUp value)? onSignUp,
    TResult? Function(AuthOnSignIn value)? onSignIn,
    TResult? Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult? Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
  }) {
    return onChangeDataSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignOut value)? onSignOut,
    TResult Function(AuthOnSignUp value)? onSignUp,
    TResult Function(AuthOnSignIn value)? onSignIn,
    TResult Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onChangeDataSignIn != null) {
      return onChangeDataSignIn(this);
    }
    return orElse();
  }
}

abstract class AuthOnChangeDataSignIn implements AuthEvent {
  const factory AuthOnChangeDataSignIn(
      {final String? email,
      final String? password}) = _$AuthOnChangeDataSignInImpl;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  _$$AuthOnChangeDataSignInImplCopyWith<_$AuthOnChangeDataSignInImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthOnChangeDataSignUpImplCopyWith<$Res> {
  factory _$$AuthOnChangeDataSignUpImplCopyWith(
          _$AuthOnChangeDataSignUpImpl value,
          $Res Function(_$AuthOnChangeDataSignUpImpl) then) =
      __$$AuthOnChangeDataSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? password, String? name});
}

/// @nodoc
class __$$AuthOnChangeDataSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthOnChangeDataSignUpImpl>
    implements _$$AuthOnChangeDataSignUpImplCopyWith<$Res> {
  __$$AuthOnChangeDataSignUpImplCopyWithImpl(
      _$AuthOnChangeDataSignUpImpl _value,
      $Res Function(_$AuthOnChangeDataSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AuthOnChangeDataSignUpImpl(
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
    ));
  }
}

/// @nodoc

class _$AuthOnChangeDataSignUpImpl implements AuthOnChangeDataSignUp {
  const _$AuthOnChangeDataSignUpImpl({this.email, this.password, this.name});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;

  @override
  String toString() {
    return 'AuthEvent.onChangeDataSignUp(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthOnChangeDataSignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthOnChangeDataSignUpImplCopyWith<_$AuthOnChangeDataSignUpImpl>
      get copyWith => __$$AuthOnChangeDataSignUpImplCopyWithImpl<
          _$AuthOnChangeDataSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSignOut,
    required TResult Function() onSignUp,
    required TResult Function() onSignIn,
    required TResult Function(String? email, String? password)
        onChangeDataSignIn,
    required TResult Function(String? email, String? password, String? name)
        onChangeDataSignUp,
  }) {
    return onChangeDataSignUp(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSignOut,
    TResult? Function()? onSignUp,
    TResult? Function()? onSignIn,
    TResult? Function(String? email, String? password)? onChangeDataSignIn,
    TResult? Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
  }) {
    return onChangeDataSignUp?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSignOut,
    TResult Function()? onSignUp,
    TResult Function()? onSignIn,
    TResult Function(String? email, String? password)? onChangeDataSignIn,
    TResult Function(String? email, String? password, String? name)?
        onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onChangeDataSignUp != null) {
      return onChangeDataSignUp(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthOnSignOut value) onSignOut,
    required TResult Function(AuthOnSignUp value) onSignUp,
    required TResult Function(AuthOnSignIn value) onSignIn,
    required TResult Function(AuthOnChangeDataSignIn value) onChangeDataSignIn,
    required TResult Function(AuthOnChangeDataSignUp value) onChangeDataSignUp,
  }) {
    return onChangeDataSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthOnSignOut value)? onSignOut,
    TResult? Function(AuthOnSignUp value)? onSignUp,
    TResult? Function(AuthOnSignIn value)? onSignIn,
    TResult? Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult? Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
  }) {
    return onChangeDataSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthOnSignOut value)? onSignOut,
    TResult Function(AuthOnSignUp value)? onSignUp,
    TResult Function(AuthOnSignIn value)? onSignIn,
    TResult Function(AuthOnChangeDataSignIn value)? onChangeDataSignIn,
    TResult Function(AuthOnChangeDataSignUp value)? onChangeDataSignUp,
    required TResult orElse(),
  }) {
    if (onChangeDataSignUp != null) {
      return onChangeDataSignUp(this);
    }
    return orElse();
  }
}

abstract class AuthOnChangeDataSignUp implements AuthEvent {
  const factory AuthOnChangeDataSignUp(
      {final String? email,
      final String? password,
      final String? name}) = _$AuthOnChangeDataSignUpImpl;

  String? get email;
  String? get password;
  String? get name;
  @JsonKey(ignore: true)
  _$$AuthOnChangeDataSignUpImplCopyWith<_$AuthOnChangeDataSignUpImpl>
      get copyWith => throw _privateConstructorUsedError;
}
