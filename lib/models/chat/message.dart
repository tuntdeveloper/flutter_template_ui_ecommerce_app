import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    String? id,
    String? chatSessionId,
    String? message,
    @Default(false) bool isTyping,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
