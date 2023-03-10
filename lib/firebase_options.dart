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
        return macos;
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
    apiKey: 'AIzaSyA0Y1EUBZHwFP6K1kx2_2Mk9B5ZFbZgXCc',
    appId: '1:815415788172:web:affd650eaac662d3f571a9',
    messagingSenderId: '815415788172',
    projectId: 'loginauth-b633f',
    authDomain: 'loginauth-b633f.firebaseapp.com',
    storageBucket: 'loginauth-b633f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhdfA9WgQokGahI3-AFi39puujCwqOD-I',
    appId: '1:815415788172:android:02b000f1581a8b1ff571a9',
    messagingSenderId: '815415788172',
    projectId: 'loginauth-b633f',
    storageBucket: 'loginauth-b633f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWvhIMLXzS5Uv-2OzQ9r10LuVvSlt5B9Q',
    appId: '1:815415788172:ios:b46a2782914bfe50f571a9',
    messagingSenderId: '815415788172',
    projectId: 'loginauth-b633f',
    storageBucket: 'loginauth-b633f.appspot.com',
    iosClientId: '815415788172-cg1nui2elud7blvucj2126l4ejrn5n3r.apps.googleusercontent.com',
    iosBundleId: 'com.example.appProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWvhIMLXzS5Uv-2OzQ9r10LuVvSlt5B9Q',
    appId: '1:815415788172:ios:b46a2782914bfe50f571a9',
    messagingSenderId: '815415788172',
    projectId: 'loginauth-b633f',
    storageBucket: 'loginauth-b633f.appspot.com',
    iosClientId: '815415788172-cg1nui2elud7blvucj2126l4ejrn5n3r.apps.googleusercontent.com',
    iosBundleId: 'com.example.appProject',
  );
}
