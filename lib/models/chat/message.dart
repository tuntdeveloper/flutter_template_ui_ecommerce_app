import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/data/local_db/local_db.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    String? id,
    String? chatSessionId,
    String? sentByUserId,
    @Default(false) bool sentByUser,
    String? message,
    @Default(false) bool isTyping,
    @Default(false) bool isRead,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

extension MessageModelX on MessageModel {
  bool get byUser => sentByUserId == getIt<LocalDbService>().getUserInfo().id;
}
