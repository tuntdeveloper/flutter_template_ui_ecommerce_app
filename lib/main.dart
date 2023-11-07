import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/data/local_db/local_db.dart';
import 'package:stylish/firebase_options.dart';
import 'package:stylish/screens/auth/bloc/auth_bloc.dart';
import 'package:stylish/screens/auth/signin_screen.dart';
import 'package:stylish/screens/chat/bloc/chat_bloc.dart';
import 'package:stylish/screens/home/home_screen.dart';

import 'data/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<ChatBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Flutter Way',
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black54, fontSize: 18),
            bodyMedium: TextStyle(color: Colors.black54, fontSize: 16),
            bodySmall: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ),
        home: getIt<LocalDbService>().getUserInfo().id != null
            ? const HomeScreen()
            : const SignInScreen(),
      ),
    );
  }
}
