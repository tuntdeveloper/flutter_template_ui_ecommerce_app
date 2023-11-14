import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ChatCallVideoScreen extends StatefulWidget {
  const ChatCallVideoScreen({super.key, this.chatSessionId});

  final String? chatSessionId;

  static Future<dynamic> push(BuildContext context) async {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ChatCallVideoScreen()));
  }

  @override
  State<ChatCallVideoScreen> createState() => _ChatCallVideoScreenState();
}

class _ChatCallVideoScreenState extends State<ChatCallVideoScreen> {
  static const String appId = '213c55e8467f424d9336f8ac99d1b5a7';
  static const String channelName = "123123";
  static const String token =
      "007eJxTYEhf9E0u4Mz0Dp+NnbJ+bju9QvhKLJgOW6fqKEuyntISN1RgMDI0TjY1TbUwMTNPMzEySbE0NjZLs0hMtrRMMUwyTTQ/JB6c2hDIyMAZasTMyACBID4bg6GRMRAxMAAAI5IZXw==";

  static const int uid = 0; // uid of the local user

  int? _remoteUid; // uid of the remote user
  bool _isJoined = false; // Indicates if the local user has joined the channel
  late RtcEngine agoraEngine; // Agora engine instance

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>(); // Global key to access the scaffold

  showMessage(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: appId,
      channelName: channelName,
      tempToken: token,
      uid: uid,
    ),
  );

  @override
  void initState() {
    super.initState();
    setupVoiceSDKEngine();
    initAgora();
  }

  @override
  void dispose() async {
    super.dispose();
    await agoraEngine.leaveChannel();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Agora UI Kit'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(
                client: client,
                layoutType: Layout.oneToOne,

                enableHostControls: true, // Add this to enable host controls
              ),
              AgoraVideoButtons(
                client: client,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _status() {
    String statusText;

    if (!_isJoined) {
      statusText = 'Join a channel';
    } else if (_remoteUid == null)
      statusText = 'Waiting for a remote user to join...';
    else
      statusText = 'Connected to remote user, uid:$_remoteUid';

    return Text(
      statusText,
    );
  }

  Future<void> setupVoiceSDKEngine() async {
    // retrieve or request microphone permission
    await [Permission.microphone, Permission.videos].request();

    //create an instance of the Agora engine
    agoraEngine = createAgoraRtcEngine();
    await agoraEngine.initialize(RtcEngineContext(appId: appId));

    // Register the event handler
    agoraEngine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          showMessage(
              "Local user uid:${connection.localUid} joined the channel");
          setState(() {
            _isJoined = true;
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          showMessage("Remote user uid:$remoteUid joined the channel");
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          showMessage("Remote user uid:$remoteUid left the channel");
          setState(() {
            _remoteUid = null;
          });
        },
      ),
    );
  }

}
