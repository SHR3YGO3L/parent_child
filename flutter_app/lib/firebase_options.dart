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
    apiKey: 'AIzaSyAftBcf4ocRuVLegO2IpPPo-5yqZjqmsHE',
    appId: '1:1002947702719:web:518a7914064e2a0c65bb0a',
    messagingSenderId: '1002947702719',
    projectId: 'childtrackerrr',
    authDomain: 'childtrackerrr.firebaseapp.com',
    storageBucket: 'childtrackerrr.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALA_7o2xrtwvZrlXgnZdly9UE5tb4S6N0',
    appId: '1:1002947702719:android:132023ae76b288ce65bb0a',
    messagingSenderId: '1002947702719',
    projectId: 'childtrackerrr',
    storageBucket: 'childtrackerrr.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC0FUki-hv1N9lNBGYgcla5HVWf0iKpcQ',
    appId: '1:1002947702719:ios:1f21c92d1eba25a765bb0a',
    messagingSenderId: '1002947702719',
    projectId: 'childtrackerrr',
    storageBucket: 'childtrackerrr.appspot.com',
    iosBundleId: 'com.example.flutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAC0FUki-hv1N9lNBGYgcla5HVWf0iKpcQ',
    appId: '1:1002947702719:ios:deb9a24a17334c8f65bb0a',
    messagingSenderId: '1002947702719',
    projectId: 'childtrackerrr',
    storageBucket: 'childtrackerrr.appspot.com',
    iosBundleId: 'com.example.flutterApp.RunnerTests',
  );
}
