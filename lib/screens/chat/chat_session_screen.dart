import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/screens/chat/bloc/chat_bloc.dart';
import 'package:stylish/screens/chat/bloc/chat_event.dart';
import 'package:stylish/screens/chat/bloc/chat_state.dart';
import 'package:stylish/screens/chat/contact_screen.dart';
import 'package:stylish/screens/chat/message_screen.dart';

class ChatSessionScreen extends StatefulWidget {
  const ChatSessionScreen({super.key});

  static Future<dynamic> push(BuildContext context) async {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ChatSessionScreen()));
  }

  @override
  State<ChatSessionScreen> createState() => _ChatSessionScreenState();
}

class _ChatSessionScreenState extends State<ChatSessionScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChatBloc>().add(const ChatOnFetchingChatSessions());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => ContactScreen.push(context),
            child: const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                CupertinoIcons.add_circled,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Text(
          'Chat',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SizedBox.expand(
        child: BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
              itemCount: state.chatSessions.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => MessageScreen.push(context,
                      chatPersonId: state.chatSessions[index].chatPersonId),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        const Expanded(child: CircleAvatar()),
                        const SizedBox(width: 8),
                        Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${state.chatSessions[index].chatPersonId}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  '${state.chatSessions[index].latestMessage}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}
