import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/screens/auth/bloc/auth_bloc.dart';
import 'package:stylish/screens/auth/bloc/auth_event.dart';
import 'package:stylish/screens/auth/bloc/auth_state.dart';
import 'package:stylish/screens/auth/signup_screen.dart';
import 'package:stylish/screens/chat/chat_session_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static Future<dynamic> push(BuildContext context,
      {bool shouldReplace = false}) async {
    if (shouldReplace) {
      return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const SignInScreen()));
    }

    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const SignInScreen()));
  }

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.actions is AuthOnSignInSuccess) {
          ChatSessionScreen.push(context, shouldReplace: true);
        }
      },
      child: Scaffold(
        body: SizedBox.expand(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF73AEF5),
                    Color(0xFF61A4F1),
                    Color(0xFF478DE0),
                    Color(0xFF398AE5),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 60,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200]!,
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      onChanged: (value) {
                                        context.read<AuthBloc>().add(
                                            AuthOnChangeDataSignIn(
                                                email: value));
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Email or Phone number",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200]!,
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      onChanged: (value) {
                                        context.read<AuthBloc>().add(
                                            AuthOnChangeDataSignIn(
                                                password: value));
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            InkWell(
                              onTap: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthOnSignIn());
                              },
                              child: Container(
                                height: 50,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFF398AE5),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            InkWell(
                              onTap: () {
                                SignUpScreen.push(context);
                              },
                              child: const Text(
                                "Continue on registering",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Facebook",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.black,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Github",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
