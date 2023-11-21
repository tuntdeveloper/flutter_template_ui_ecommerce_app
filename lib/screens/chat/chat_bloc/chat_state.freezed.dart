// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserModel> get contacts => throw _privateConstructorUsedError;
  List<ChatSessionModel> get chatSessions => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;
  String? get chatSessionId => throw _privateConstructorUsedError;
  String? get chatSessionIdDraft => throw _privateConstructorUsedError;
  ChatStateAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<UserModel> contacts,
      List<ChatSessionModel> chatSessions,
      List<MessageModel> messages,
      String? chatSessionId,
      String? chatSessionIdDraft,
      ChatStateAction? action});

  $ChatStateActionCopyWith<$Res>? get action;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? contacts = null,
    Object? chatSessions = null,
    Object? messages = null,
    Object? chatSessionId = freezed,
    Object? chatSessionIdDraft = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      chatSessions: null == chatSessions
          ? _value.chatSessions
          : chatSessions // ignore: cast_nullable_to_non_nullable
              as List<ChatSessionModel>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      chatSessionId: freezed == chatSessionId
          ? _value.chatSessionId
          : chatSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatSessionIdDraft: freezed == chatSessionIdDraft
          ? _value.chatSessionIdDraft
          : chatSessionIdDraft // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ChatStateAction?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatStateActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $ChatStateActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<UserModel> contacts,
      List<ChatSessionModel> chatSessions,
      List<MessageModel> messages,
      String? chatSessionId,
      String? chatSessionIdDraft,
      ChatStateAction? action});

  @override
  $ChatStateActionCopyWith<$Res>? get action;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? contacts = null,
    Object? chatSessions = null,
    Object? messages = null,
    Object? chatSessionId = freezed,
    Object? chatSessionIdDraft = freezed,
    Object? action = freezed,
  }) {
    return _then(_$ChatStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      chatSessions: null == chatSessions
          ? _value._chatSessions
          : chatSessions // ignore: cast_nullable_to_non_nullable
              as List<ChatSessionModel>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      chatSessionId: freezed == chatSessionId
          ? _value.chatSessionId
          : chatSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatSessionIdDraft: freezed == chatSessionIdDraft
          ? _value.chatSessionIdDraft
          : chatSessionIdDraft // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ChatStateAction?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.isLoading = false,
      final List<UserModel> contacts = const <UserModel>[],
      final List<ChatSessionModel> chatSessions = const <ChatSessionModel>[],
      final List<MessageModel> messages = const <MessageModel>[],
      this.chatSessionId,
      this.chatSessionIdDraft,
      this.action})
      : _contacts = contacts,
        _chatSessions = chatSessions,
        _messages = messages;

  @override
  @JsonKey()
  final bool isLoading;
  final List<UserModel> _contacts;
  @override
  @JsonKey()
  List<UserModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<ChatSessionModel> _chatSessions;
  @override
  @JsonKey()
  List<ChatSessionModel> get chatSessions {
    if (_chatSessions is EqualUnmodifiableListView) return _chatSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatSessions);
  }

  final List<MessageModel> _messages;
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? chatSessionId;
  @override
  final String? chatSessionIdDraft;
  @override
  final ChatStateAction? action;

  @override
  String toString() {
    return 'ChatState(isLoading: $isLoading, contacts: $contacts, chatSessions: $chatSessions, messages: $messages, chatSessionId: $chatSessionId, chatSessionIdDraft: $chatSessionIdDraft, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._chatSessions, _chatSessions) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.chatSessionId, chatSessionId) ||
                other.chatSessionId == chatSessionId) &&
            (identical(other.chatSessionIdDraft, chatSessionIdDraft) ||
                other.chatSessionIdDraft == chatSessionIdDraft) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_chatSessions),
      const DeepCollectionEquality().hash(_messages),
      chatSessionId,
      chatSessionIdDraft,
      action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final bool isLoading,
      final List<UserModel> contacts,
      final List<ChatSessionModel> chatSessions,
      final List<MessageModel> messages,
      final String? chatSessionId,
      final String? chatSessionIdDraft,
      final ChatStateAction? action}) = _$ChatStateImpl;

  @override
  bool get isLoading;
  @override
  List<UserModel> get contacts;
  @override
  List<ChatSessionModel> get chatSessions;
  @override
  List<MessageModel> get messages;
  @override
  String? get chatSessionId;
  @override
  String? get chatSessionIdDraft;
  @override
  ChatStateAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatStateAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreatedNewChatSession,
    required TResult Function() onCreateNewDraftChatSessionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCreatedNewChatSession,
    TResult? Function()? onCreateNewDraftChatSessionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreatedNewChatSession,
    TResult Function()? onCreateNewDraftChatSessionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatActionOnCreatedNewChatSession value)
        onCreatedNewChatSession,
    required TResult Function(ChatOnCreateNewDraftChatSessionSuccess value)
        onCreateNewDraftChatSessionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatActionOnCreatedNewChatSession value)?
        onCreatedNewChatSession,
    TResult? Function(ChatOnCreateNewDraftChatSessionSuccess value)?
        onCreateNewDraftChatSessionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatActionOnCreatedNewChatSession value)?
        onCreatedNewChatSession,
    TResult Function(ChatOnCreateNewDraftChatSessionSuccess value)?
        onCreateNewDraftChatSessionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateActionCopyWith<$Res> {
  factory $ChatStateActionCopyWith(
          ChatStateAction value, $Res Function(ChatStateAction) then) =
      _$ChatStateActionCopyWithImpl<$Res, ChatStateAction>;
}

/// @nodoc
class _$ChatStateActionCopyWithImpl<$Res, $Val extends ChatStateAction>
    implements $ChatStateActionCopyWith<$Res> {
  _$ChatStateActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatActionOnCreatedNewChatSessionImplCopyWith<$Res> {
  factory _$$ChatActionOnCreatedNewChatSessionImplCopyWith(
          _$ChatActionOnCreatedNewChatSessionImpl value,
          $Res Function(_$ChatActionOnCreatedNewChatSessionImpl) then) =
      __$$ChatActionOnCreatedNewChatSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatActionOnCreatedNewChatSessionImplCopyWithImpl<$Res>
    extends _$ChatStateActionCopyWithImpl<$Res,
        _$ChatActionOnCreatedNewChatSessionImpl>
    implements _$$ChatActionOnCreatedNewChatSessionImplCopyWith<$Res> {
  __$$ChatActionOnCreatedNewChatSessionImplCopyWithImpl(
      _$ChatActionOnCreatedNewChatSessionImpl _value,
      $Res Function(_$ChatActionOnCreatedNewChatSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatActionOnCreatedNewChatSessionImpl
    implements ChatActionOnCreatedNewChatSession {
  const _$ChatActionOnCreatedNewChatSessionImpl();

  @override
  String toString() {
    return 'ChatStateAction.onCreatedNewChatSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatActionOnCreatedNewChatSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreatedNewChatSession,
    required TResult Function() onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreatedNewChatSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCreatedNewChatSession,
    TResult? Function()? onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreatedNewChatSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreatedNewChatSession,
    TResult Function()? onCreateNewDraftChatSessionSuccess,
    required TResult orElse(),
  }) {
    if (onCreatedNewChatSession != null) {
      return onCreatedNewChatSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatActionOnCreatedNewChatSession value)
        onCreatedNewChatSession,
    required TResult Function(ChatOnCreateNewDraftChatSessionSuccess value)
        onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreatedNewChatSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatActionOnCreatedNewChatSession value)?
        onCreatedNewChatSession,
    TResult? Function(ChatOnCreateNewDraftChatSessionSuccess value)?
        onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreatedNewChatSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatActionOnCreatedNewChatSession value)?
        onCreatedNewChatSession,
    TResult Function(ChatOnCreateNewDraftChatSessionSuccess value)?
        onCreateNewDraftChatSessionSuccess,
    required TResult orElse(),
  }) {
    if (onCreatedNewChatSession != null) {
      return onCreatedNewChatSession(this);
    }
    return orElse();
  }
}

abstract class ChatActionOnCreatedNewChatSession implements ChatStateAction {
  const factory ChatActionOnCreatedNewChatSession() =
      _$ChatActionOnCreatedNewChatSessionImpl;
}

/// @nodoc
abstract class _$$ChatOnCreateNewDraftChatSessionSuccessImplCopyWith<$Res> {
  factory _$$ChatOnCreateNewDraftChatSessionSuccessImplCopyWith(
          _$ChatOnCreateNewDraftChatSessionSuccessImpl value,
          $Res Function(_$ChatOnCreateNewDraftChatSessionSuccessImpl) then) =
      __$$ChatOnCreateNewDraftChatSessionSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatOnCreateNewDraftChatSessionSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateActionCopyWithImpl<$Res,
        _$ChatOnCreateNewDraftChatSessionSuccessImpl>
    implements _$$ChatOnCreateNewDraftChatSessionSuccessImplCopyWith<$Res> {
  __$$ChatOnCreateNewDraftChatSessionSuccessImplCopyWithImpl(
      _$ChatOnCreateNewDraftChatSessionSuccessImpl _value,
      $Res Function(_$ChatOnCreateNewDraftChatSessionSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatOnCreateNewDraftChatSessionSuccessImpl
    implements ChatOnCreateNewDraftChatSessionSuccess {
  const _$ChatOnCreateNewDraftChatSessionSuccessImpl();

  @override
  String toString() {
    return 'ChatStateAction.onCreateNewDraftChatSessionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatOnCreateNewDraftChatSessionSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreatedNewChatSession,
    required TResult Function() onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreateNewDraftChatSessionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCreatedNewChatSession,
    TResult? Function()? onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreateNewDraftChatSessionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreatedNewChatSession,
    TResult Function()? onCreateNewDraftChatSessionSuccess,
    required TResult orElse(),
  }) {
    if (onCreateNewDraftChatSessionSuccess != null) {
      return onCreateNewDraftChatSessionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatActionOnCreatedNewChatSession value)
        onCreatedNewChatSession,
    required TResult Function(ChatOnCreateNewDraftChatSessionSuccess value)
        onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreateNewDraftChatSessionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatActionOnCreatedNewChatSession value)?
        onCreatedNewChatSession,
    TResult? Function(ChatOnCreateNewDraftChatSessionSuccess value)?
        onCreateNewDraftChatSessionSuccess,
  }) {
    return onCreateNewDraftChatSessionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatActionOnCreatedNewChatSession value)?
        onCreatedNewChatSession,
    TResult Function(ChatOnCreateNewDraftChatSessionSuccess value)?
        onCreateNewDraftChatSessionSuccess,
    required TResult orElse(),
  }) {
    if (onCreateNewDraftChatSessionSuccess != null) {
      return onCreateNewDraftChatSessionSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatOnCreateNewDraftChatSessionSuccess
    implements ChatStateAction {
  const factory ChatOnCreateNewDraftChatSessionSuccess() =
      _$ChatOnCreateNewDraftChatSessionSuccessImpl;
}
