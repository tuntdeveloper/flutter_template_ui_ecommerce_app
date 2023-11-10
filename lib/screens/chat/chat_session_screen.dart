import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/screens/auth/bloc/auth_bloc.dart';
import 'package:stylish/screens/auth/bloc/auth_event.dart';
import 'package:stylish/screens/auth/bloc/auth_state.dart';
import 'package:stylish/screens/auth/signin_screen.dart';
import 'package:stylish/screens/chat/bloc/chat_bloc.dart';
import 'package:stylish/screens/chat/bloc/chat_event.dart';
import 'package:stylish/screens/chat/bloc/chat_state.dart';
import 'package:stylish/screens/chat/contact_screen.dart';
import 'package:stylish/screens/chat/message_screen.dart';

class ChatSessionScreen extends StatefulWidget {
  const ChatSessionScreen({super.key});

  static Future<dynamic> push(BuildContext context,
      {bool shouldReplace = false}) async {
    if (shouldReplace) {
      return Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => const ChatSessionScreen()));
    }

    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ChatSessionScreen()));
  }

  @override
  State<ChatSessionScreen> createState() => _ChatSessionScreenState();
}

class _ChatSessionScreenState extends State<ChatSessionScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChatBloc>().add(const ChatOnFetchingChatSessions());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if(state.actions is AuthOnSignOutSuccess) {
          SignInScreen.push(context, shouldReplace: true);
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
            backgroundColor: Colors.white,
            width: 300,
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: Column(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () => context.read<AuthBloc>().add(const AuthOnSignOut()),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      'Sign Out',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
              ],
            )),
        appBar: AppBar(
          leading: InkWell(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: const SizedBox(
              height: 28,
              width: 28,
              child: Center(
                child: Icon(Icons.more_horiz, color: Colors.black),
              ),
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
                    onTap: () => MessageScreen.push(context),
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
                                    '${state.chatSessions[index].title}',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Text(
                                    '${state.chatSessions[index].id}',
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
      ),
    );
  }
}
