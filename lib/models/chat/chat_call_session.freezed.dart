// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_call_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCallSessionModel _$ChatCallSessionModelFromJson(Map<String, dynamic> json) {
  return _ChatCallSessionModel.fromJson(json);
}

/// @nodoc
mixin _$ChatCallSessionModel {
  UserModel? get userCalling => throw _privateConstructorUsedError;
  bool get isVideoCalling => throw _privateConstructorUsedError;
  bool get isVoiceCalling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCallSessionModelCopyWith<ChatCallSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCallSessionModelCopyWith<$Res> {
  factory $ChatCallSessionModelCopyWith(ChatCallSessionModel value,
          $Res Function(ChatCallSessionModel) then) =
      _$ChatCallSessionModelCopyWithImpl<$Res, ChatCallSessionModel>;
  @useResult
  $Res call({UserModel? userCalling, bool isVideoCalling, bool isVoiceCalling});

  $UserModelCopyWith<$Res>? get userCalling;
}

/// @nodoc
class _$ChatCallSessionModelCopyWithImpl<$Res,
        $Val extends ChatCallSessionModel>
    implements $ChatCallSessionModelCopyWith<$Res> {
  _$ChatCallSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCalling = freezed,
    Object? isVideoCalling = null,
    Object? isVoiceCalling = null,
  }) {
    return _then(_value.copyWith(
      userCalling: freezed == userCalling
          ? _value.userCalling
          : userCalling // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isVideoCalling: null == isVideoCalling
          ? _value.isVideoCalling
          : isVideoCalling // ignore: cast_nullable_to_non_nullable
              as bool,
      isVoiceCalling: null == isVoiceCalling
          ? _value.isVoiceCalling
          : isVoiceCalling // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userCalling {
    if (_value.userCalling == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userCalling!, (value) {
      return _then(_value.copyWith(userCalling: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatCallSessionModelImplCopyWith<$Res>
    implements $ChatCallSessionModelCopyWith<$Res> {
  factory _$$ChatCallSessionModelImplCopyWith(_$ChatCallSessionModelImpl value,
          $Res Function(_$ChatCallSessionModelImpl) then) =
      __$$ChatCallSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? userCalling, bool isVideoCalling, bool isVoiceCalling});

  @override
  $UserModelCopyWith<$Res>? get userCalling;
}

/// @nodoc
class __$$ChatCallSessionModelImplCopyWithImpl<$Res>
    extends _$ChatCallSessionModelCopyWithImpl<$Res, _$ChatCallSessionModelImpl>
    implements _$$ChatCallSessionModelImplCopyWith<$Res> {
  __$$ChatCallSessionModelImplCopyWithImpl(_$ChatCallSessionModelImpl _value,
      $Res Function(_$ChatCallSessionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCalling = freezed,
    Object? isVideoCalling = null,
    Object? isVoiceCalling = null,
  }) {
    return _then(_$ChatCallSessionModelImpl(
      userCalling: freezed == userCalling
          ? _value.userCalling
          : userCalling // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isVideoCalling: null == isVideoCalling
          ? _value.isVideoCalling
          : isVideoCalling // ignore: cast_nullable_to_non_nullable
              as bool,
      isVoiceCalling: null == isVoiceCalling
          ? _value.isVoiceCalling
          : isVoiceCalling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCallSessionModelImpl implements _ChatCallSessionModel {
  const _$ChatCallSessionModelImpl(
      {this.userCalling,
      this.isVideoCalling = false,
      this.isVoiceCalling = false});

  factory _$ChatCallSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCallSessionModelImplFromJson(json);

  @override
  final UserModel? userCalling;
  @override
  @JsonKey()
  final bool isVideoCalling;
  @override
  @JsonKey()
  final bool isVoiceCalling;

  @override
  String toString() {
    return 'ChatCallSessionModel(userCalling: $userCalling, isVideoCalling: $isVideoCalling, isVoiceCalling: $isVoiceCalling)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCallSessionModelImpl &&
            (identical(other.userCalling, userCalling) ||
                other.userCalling == userCalling) &&
            (identical(other.isVideoCalling, isVideoCalling) ||
                other.isVideoCalling == isVideoCalling) &&
            (identical(other.isVoiceCalling, isVoiceCalling) ||
                other.isVoiceCalling == isVoiceCalling));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userCalling, isVideoCalling, isVoiceCalling);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCallSessionModelImplCopyWith<_$ChatCallSessionModelImpl>
      get copyWith =>
          __$$ChatCallSessionModelImplCopyWithImpl<_$ChatCallSessionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCallSessionModelImplToJson(
      this,
    );
  }
}

abstract class _ChatCallSessionModel implements ChatCallSessionModel {
  const factory _ChatCallSessionModel(
      {final UserModel? userCalling,
      final bool isVideoCalling,
      final bool isVoiceCalling}) = _$ChatCallSessionModelImpl;

  factory _ChatCallSessionModel.fromJson(Map<String, dynamic> json) =
      _$ChatCallSessionModelImpl.fromJson;

  @override
  UserModel? get userCalling;
  @override
  bool get isVideoCalling;
  @override
  bool get isVoiceCalling;
  @override
  @JsonKey(ignore: true)
  _$$ChatCallSessionModelImplCopyWith<_$ChatCallSessionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
