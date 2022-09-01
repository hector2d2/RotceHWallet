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
    apiKey: 'AIzaSyCas1TWslUCs3do22xFdKUhUkuCnq5ykjc',
    appId: '1:658847669097:web:8b63263a65c068310c3bf8',
    messagingSenderId: '658847669097',
    projectId: 'rwallet-def1e',
    authDomain: 'rwallet-def1e.firebaseapp.com',
    storageBucket: 'rwallet-def1e.appspot.com',
    measurementId: 'G-TSCEDTS40K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyq25VZgNevSzGukCNQF2T-ACpFenz6Pc',
    appId: '1:658847669097:android:ced72fe65d9fa1830c3bf8',
    messagingSenderId: '658847669097',
    projectId: 'rwallet-def1e',
    storageBucket: 'rwallet-def1e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBiXtTBNgAn04PcZM47_4v7ZzfJ5zX-A1g',
    appId: '1:658847669097:ios:a0462c77d50be8cd0c3bf8',
    messagingSenderId: '658847669097',
    projectId: 'rwallet-def1e',
    storageBucket: 'rwallet-def1e.appspot.com',
    iosClientId: '658847669097-bj81u2aqpec7dp5aks3k4fito7ajvhdq.apps.googleusercontent.com',
    iosBundleId: 'com.example.rwallet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBiXtTBNgAn04PcZM47_4v7ZzfJ5zX-A1g',
    appId: '1:658847669097:ios:a0462c77d50be8cd0c3bf8',
    messagingSenderId: '658847669097',
    projectId: 'rwallet-def1e',
    storageBucket: 'rwallet-def1e.appspot.com',
    iosClientId: '658847669097-bj81u2aqpec7dp5aks3k4fito7ajvhdq.apps.googleusercontent.com',
    iosBundleId: 'com.example.rwallet',
  );
}
