import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/models/chat/chat_session.dart';
import 'package:stylish/models/chat/message.dart';
import 'package:stylish/screens/chat/chat_bloc/chat_bloc.dart';
import 'package:stylish/screens/chat/chat_bloc/chat_event.dart';
import 'package:stylish/screens/chat/chat_bloc/chat_state.dart';
import 'package:stylish/screens/chat/chat_call_video_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen(
      {super.key, required this.chatSessionModel, required this.chatPersonIds});

  final ChatSessionModel? chatSessionModel;
  final List<String?> chatPersonIds;

  static Future<dynamic> push(BuildContext context,
      {ChatSessionModel? chatSessionModel,
      List<String?> chatPersonIds = const []}) async {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => MessageScreen(
                chatSessionModel: chatSessionModel,
                chatPersonIds: chatPersonIds)));
  }

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final _focusNode = FocusNode();
  final _textEditingController = TextEditingController();
  final _scrollController = ScrollController();

  late final ChatBloc bloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => bloc = context
        .read<ChatBloc>()
      ..add(ChatOnListenMessage(chatSessionId: widget.chatSessionModel?.id)));
  }

  @override
  void dispose() {
    super.dispose();
    bloc.add(const ChatOnDisposeMessageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Message',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  ChatCallVideoScreen.push(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.phone_circle,
                    color: Colors.black,
                  ),
                )),
            GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.videocam_circle,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
        body: SizedBox.expand(
          child: GestureDetector(
            onTap: () {
              if (_focusNode.hasFocus) {
                _focusNode.unfocus();
              }
            },
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(0),
                    reverse: true,
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) =>
                        _BindMessageItemWidget(data: state.messages[index]),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(left: 8),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: TextField(
                    maxLines: null,
                    minLines: null,
                    expands: true,
                    controller: _textEditingController,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: InkWell(
                            onTap: () {
                              context
                                  .read<ChatBloc>()
                                  .add(ChatOnCreatingNewMessage(
                                    chatPersonIds: widget.chatPersonIds,
                                    chatSessionId: widget.chatSessionModel?.id,
                                    message: _textEditingController.text,
                                  ));
                              _textEditingController.clear();
                            },
                            child: const Icon(
                                CupertinoIcons.arrow_right_circle_fill))),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class _BindMessageItemWidget extends StatefulWidget {
  const _BindMessageItemWidget({required this.data});

  final MessageModel data;

  @override
  State<_BindMessageItemWidget> createState() => _BindMessageItemWidgetState();
}

class _BindMessageItemWidgetState extends State<_BindMessageItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: widget.data.byUser
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Text(
            '${widget.data.message}',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
