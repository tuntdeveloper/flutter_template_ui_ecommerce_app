import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/screens/auth/bloc/auth_bloc.dart';
import 'package:stylish/screens/auth/bloc/auth_event.dart';
import 'package:stylish/screens/auth/bloc/auth_state.dart';
import 'package:stylish/screens/auth/signin_screen.dart';
import 'package:stylish/screens/chat/chat_session_screen.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Future<dynamic> push(BuildContext context) async {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const HomeScreen()));
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.actions is AuthOnSignOutSuccess) {
          SignInScreen.push(context, shouldReplace: true);
        }
      },
      child: Scaffold(
        key: _key,
        drawer: Drawer(
            width: 300,
            child: Column(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () =>
                      context.read<AuthBloc>().add(const AuthOnSignOut()),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text('Sign Out'),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
              ],
            )),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(width: defaultPadding / 2),
              Text(
                "15/2 New Texas",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () => ChatSessionScreen.push(context),
              child: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  CupertinoIcons.chat_bubble_2,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const Text(
                "best Outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(),
              ),
              const Categories(),
              const NewArrivalProducts(),
              const PopularProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
