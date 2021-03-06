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
    apiKey: 'AIzaSyDI-gfQmqIL8a8mQx33nzVwlSYAzqFgO0k',
    appId: '1:271533317655:web:cf4eb7d3874ee7e4000652',
    messagingSenderId: '271533317655',
    projectId: 'amarjeet314-fb',
    authDomain: 'amarjeet314-fb.firebaseapp.com',
    storageBucket: 'amarjeet314-fb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHJ1rt3YURtr7DhZt0y5vArNeNGlsezfY',
    appId: '1:271533317655:android:f40c6cd58914cff8000652',
    messagingSenderId: '271533317655',
    projectId: 'amarjeet314-fb',
    storageBucket: 'amarjeet314-fb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-G7gRI1Uz0OaH8eYeyMnfmicI6nZW__8',
    appId: '1:271533317655:ios:714ef112be86db97000652',
    messagingSenderId: '271533317655',
    projectId: 'amarjeet314-fb',
    storageBucket: 'amarjeet314-fb.appspot.com',
    iosClientId: '271533317655-mvmrcq851kthhoql52ud931i0sgf0ca2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
