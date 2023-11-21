// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGWRES22ZbgR-GKpBUwLWHrKQ43v5UdiA',
    appId: '1:197044727812:android:59eb1d58eba804e23c4551',
    messagingSenderId: '197044727812',
    projectId: 'flutter-chat-project-c4ff5',
    databaseURL: 'https://flutter-chat-project-c4ff5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-chat-project-c4ff5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGhlY7MH7uXcdCOs8ucYOLx4lFlfxAU0c',
    appId: '1:197044727812:ios:8c874b4cea40f89e3c4551',
    messagingSenderId: '197044727812',
    projectId: 'flutter-chat-project-c4ff5',
    databaseURL: 'https://flutter-chat-project-c4ff5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-chat-project-c4ff5.appspot.com',
    iosBundleId: 'com.example.stylish',
  );
}
