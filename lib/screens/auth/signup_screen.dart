import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/screens/auth/bloc/auth_bloc.dart';
import 'package:stylish/screens/auth/bloc/auth_event.dart';
import 'package:stylish/screens/auth/bloc/auth_state.dart';
import 'package:stylish/screens/home/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static Future<dynamic> push(BuildContext context) async {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => const SignUpScreen()));
  }

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.actions is AuthOnSignUpSuccess) {
          HomeScreen.push(context);
        }
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  context
                      .read<AuthBloc>()
                      .add(AuthOnChangeDataSignUp(name: value));
                },
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  context
                      .read<AuthBloc>()
                      .add(AuthOnChangeDataSignUp(email: value));
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  context
                      .read<AuthBloc>()
                      .add(AuthOnChangeDataSignUp(password: value));
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthOnSignUp());
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
