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
    apiKey: 'AIzaSyAkyW4EyF4h-NqPcsyIL9PHuENpR2V8rgc',
    appId: '1:531366141166:web:51f9d5771afbaa67d2e7ff',
    messagingSenderId: '531366141166',
    projectId: 'cmsc23-amlaron1',
    authDomain: 'cmsc23-amlaron1.firebaseapp.com',
    storageBucket: 'cmsc23-amlaron1.appspot.com',
    measurementId: 'G-8TM0RXD6VN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBATKaJ7vx6mGav5cmjNo8xWVOl8wIBruE',
    appId: '1:531366141166:android:ce4802b3dc78342fd2e7ff',
    messagingSenderId: '531366141166',
    projectId: 'cmsc23-amlaron1',
    storageBucket: 'cmsc23-amlaron1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkvk-v3HiycXsylTYepKp_8ey3MICP7cU',
    appId: '1:531366141166:ios:c05694f9adb1da2ed2e7ff',
    messagingSenderId: '531366141166',
    projectId: 'cmsc23-amlaron1',
    storageBucket: 'cmsc23-amlaron1.appspot.com',
    iosClientId: '531366141166-ogfll2rqr0703dd5f9j9ren6t3cfce79.apps.googleusercontent.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkvk-v3HiycXsylTYepKp_8ey3MICP7cU',
    appId: '1:531366141166:ios:c05694f9adb1da2ed2e7ff',
    messagingSenderId: '531366141166',
    projectId: 'cmsc23-amlaron1',
    storageBucket: 'cmsc23-amlaron1.appspot.com',
    iosClientId: '531366141166-ogfll2rqr0703dd5f9j9ren6t3cfce79.apps.googleusercontent.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );
}