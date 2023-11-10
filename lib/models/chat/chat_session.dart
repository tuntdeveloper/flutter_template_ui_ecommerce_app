import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stylish/models/auth/user.dart';

part 'chat_session.freezed.dart';

part 'chat_session.g.dart';

@freezed
class ChatSessionModel with _$ChatSessionModel {
  const factory ChatSessionModel({
    String? id,
    @Default(<String?>[]) List<String?> chatUserIds,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
  }) = _ChatSessionModel;

  factory ChatSessionModel.fromJson(Map<String, dynamic> json) =>
      _$ChatSessionModelFromJson(json);
}
