import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_call_state.freezed.dart';

@freezed
class ChatCallState with _$ChatCallState {
  const factory ChatCallState({
    String? roomId,
    MediaStream? localStream,
    MediaStream? remoteStream,
    RTCPeerConnection? peerConnection,
    @Default(false) bool cleared,
    @Default(false) bool currentUserShown,
    @Default(false) bool companionShown,
    @Default(false) bool videoDisabled,
    @Default(false) bool audioDisabled,
    @Default(false) bool microMuted,
    @Default([]) List<StreamSubscription> subscriptions,
  }) = _ChatCallState;
}
