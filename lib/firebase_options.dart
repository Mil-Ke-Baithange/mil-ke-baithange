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
    if (kIsWeb) {
      return web;
    }
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAejZVGDmnHavTT7BD_V9oDGYnXNn1ko_A',
    appId: '1:485275093096:web:dcb8ed9e89c3ae6d48d3dd',
    messagingSenderId: '485275093096',
    projectId: 'voip-chat-mkb',
    authDomain: 'voip-chat-mkb.firebaseapp.com',
    storageBucket: 'voip-chat-mkb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe5LAR1oJdoqq3h8ikF3pBFzMQ4TDblfM',
    appId: '1:485275093096:android:1a869551226e3dc548d3dd',
    messagingSenderId: '485275093096',
    projectId: 'voip-chat-mkb',
    storageBucket: 'voip-chat-mkb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCyjYD0JcDbwGb0bHAkvu8CJQuCmDAVPKk',
    appId: '1:485275093096:ios:e141a5bb36c3463d48d3dd',
    messagingSenderId: '485275093096',
    projectId: 'voip-chat-mkb',
    storageBucket: 'voip-chat-mkb.appspot.com',
    androidClientId: '485275093096-5ljier126ejume2u00g8ilsqjrl2k59g.apps.googleusercontent.com',
    iosClientId: '485275093096-s25nuubostg1uas1jqh3eihri21tofq8.apps.googleusercontent.com',
    iosBundleId: 'com.example.voipChat',
  );
}
