// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatSessionModel _$ChatSessionModelFromJson(Map<String, dynamic> json) {
  return _ChatSessionModel.fromJson(json);
}

/// @nodoc
mixin _$ChatSessionModel {
  String? get id => throw _privateConstructorUsedError;
  List<String?> get chatUserIds => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatSessionModelCopyWith<ChatSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSessionModelCopyWith<$Res> {
  factory $ChatSessionModelCopyWith(
          ChatSessionModel value, $Res Function(ChatSessionModel) then) =
      _$ChatSessionModelCopyWithImpl<$Res, ChatSessionModel>;
  @useResult
  $Res call(
      {String? id,
      List<String?> chatUserIds,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? title});
}

/// @nodoc
class _$ChatSessionModelCopyWithImpl<$Res, $Val extends ChatSessionModel>
    implements $ChatSessionModelCopyWith<$Res> {
  _$ChatSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatUserIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUserIds: null == chatUserIds
          ? _value.chatUserIds
          : chatUserIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatSessionModelImplCopyWith<$Res>
    implements $ChatSessionModelCopyWith<$Res> {
  factory _$$ChatSessionModelImplCopyWith(_$ChatSessionModelImpl value,
          $Res Function(_$ChatSessionModelImpl) then) =
      __$$ChatSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<String?> chatUserIds,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? title});
}

/// @nodoc
class __$$ChatSessionModelImplCopyWithImpl<$Res>
    extends _$ChatSessionModelCopyWithImpl<$Res, _$ChatSessionModelImpl>
    implements _$$ChatSessionModelImplCopyWith<$Res> {
  __$$ChatSessionModelImplCopyWithImpl(_$ChatSessionModelImpl _value,
      $Res Function(_$ChatSessionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatUserIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ChatSessionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUserIds: null == chatUserIds
          ? _value._chatUserIds
          : chatUserIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatSessionModelImpl implements _ChatSessionModel {
  const _$ChatSessionModelImpl(
      {this.id,
      final List<String?> chatUserIds = const <String?>[],
      this.createdAt,
      this.updatedAt,
      this.title})
      : _chatUserIds = chatUserIds;

  factory _$ChatSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSessionModelImplFromJson(json);

  @override
  final String? id;
  final List<String?> _chatUserIds;
  @override
  @JsonKey()
  List<String?> get chatUserIds {
    if (_chatUserIds is EqualUnmodifiableListView) return _chatUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatUserIds);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? title;

  @override
  String toString() {
    return 'ChatSessionModel(id: $id, chatUserIds: $chatUserIds, createdAt: $createdAt, updatedAt: $updatedAt, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._chatUserIds, _chatUserIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_chatUserIds),
      createdAt,
      updatedAt,
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionModelImplCopyWith<_$ChatSessionModelImpl> get copyWith =>
      __$$ChatSessionModelImplCopyWithImpl<_$ChatSessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSessionModelImplToJson(
      this,
    );
  }
}

abstract class _ChatSessionModel implements ChatSessionModel {
  const factory _ChatSessionModel(
      {final String? id,
      final List<String?> chatUserIds,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? title}) = _$ChatSessionModelImpl;

  factory _ChatSessionModel.fromJson(Map<String, dynamic> json) =
      _$ChatSessionModelImpl.fromJson;

  @override
  String? get id;
  @override
  List<String?> get chatUserIds;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ChatSessionModelImplCopyWith<_$ChatSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
