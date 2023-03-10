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
    apiKey: 'AIzaSyAXlEvBAypT7oLr39hTDlK6LdHUCeh05aA',
    appId: '1:941661578329:web:7303eec2263b9dcffcfd48',
    messagingSenderId: '941661578329',
    projectId: 'signintest-26bc4',
    authDomain: 'signintest-26bc4.firebaseapp.com',
    storageBucket: 'signintest-26bc4.appspot.com',
    measurementId: 'G-7JRMC4KXZM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvmQc1t2JxHB53BjKxme2Op26LNcVCDSI',
    appId: '1:941661578329:android:b1bbe0c23ac0eae1fcfd48',
    messagingSenderId: '941661578329',
    projectId: 'signintest-26bc4',
    storageBucket: 'signintest-26bc4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnWAkLmLWOgMcdrc5BC1PEepr0z10KqJY',
    appId: '1:941661578329:ios:4f40063b94eeb8ecfcfd48',
    messagingSenderId: '941661578329',
    projectId: 'signintest-26bc4',
    storageBucket: 'signintest-26bc4.appspot.com',
    iosClientId: '941661578329-nlmb347lqtrv2cfcbb9qef68rt6nr2f8.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginSceen2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnWAkLmLWOgMcdrc5BC1PEepr0z10KqJY',
    appId: '1:941661578329:ios:4f40063b94eeb8ecfcfd48',
    messagingSenderId: '941661578329',
    projectId: 'signintest-26bc4',
    storageBucket: 'signintest-26bc4.appspot.com',
    iosClientId: '941661578329-nlmb347lqtrv2cfcbb9qef68rt6nr2f8.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginSceen2',
  );
}
