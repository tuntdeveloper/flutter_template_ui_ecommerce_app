import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stylish/models/auth/user.dart';

part 'chat_call_session.freezed.dart';

part 'chat_call_session.g.dart';

@freezed
class ChatCallSessionModel with _$ChatCallSessionModel {
  const factory ChatCallSessionModel({
    UserModel? userCalling,
    @Default(false) bool isVideoCalling,
    @Default(false) bool isVoiceCalling,
  }) = _ChatCallSessionModel;

  factory ChatCallSessionModel.fromJson(Map<String, dynamic> json) =>
      _$ChatCallSessionModelFromJson(json);
}
