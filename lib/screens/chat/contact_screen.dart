import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/screens/chat/bloc/chat_bloc.dart';
import 'package:stylish/screens/chat/bloc/chat_event.dart';
import 'package:stylish/screens/chat/bloc/chat_state.dart';
import 'package:stylish/screens/chat/message_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  static Future<dynamic> push(BuildContext context) async {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ContactScreen()));
  }

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChatBloc>().add(const ChatOnFetchingContacts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
        title: Text(
          'Contacts',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: state.contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                MessageScreen.push(context,
                  chatPersonIds: [state.contacts[index].id]);
              },
              child: ListTile(
                title: Text(state.contacts[index].name ?? ''),
                leading: CircleAvatar(
                  child:
                      Text(state.contacts[index].name?[0].toUpperCase() ?? ''),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
