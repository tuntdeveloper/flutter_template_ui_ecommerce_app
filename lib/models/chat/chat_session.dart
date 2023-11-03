import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_session.freezed.dart';

part 'chat_session.g.dart';

@freezed
class ChatSessionModel with _$ChatSessionModel {
  const factory ChatSessionModel({
    String? id,
    String? latestMessage,
    String? userId,
    String? chatPersonId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =_ChatSessionModel;

  factory ChatSessionModel.fromJson(Map<String, dynamic> json) =>
      _$ChatSessionModelFromJson(json);
}