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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBhaHNQkZsoRH3ybBXQk8PZA6t5OTmGdhQ',
    appId: '1:883025666135:web:c6b232aae48da533644312',
    messagingSenderId: '883025666135',
    projectId: 'todo-799e1',
    authDomain: 'todo-799e1.firebaseapp.com',
    storageBucket: 'todo-799e1.appspot.com',
    measurementId: 'G-VM6KNM0M8Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAkaYoiB8J0DCkzQUGCgGffPwC-1U2YhA',
    appId: '1:883025666135:android:1f407e575502f678644312',
    messagingSenderId: '883025666135',
    projectId: 'todo-799e1',
    storageBucket: 'todo-799e1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIZUz4FER8rLTS68QIb6nCPKWZ41XKPno',
    appId: '1:883025666135:ios:6f14d8bdc02affd0644312',
    messagingSenderId: '883025666135',
    projectId: 'todo-799e1',
    storageBucket: 'todo-799e1.appspot.com',
    iosClientId: '883025666135-fi0navrrdp1o2rii5dpgvjdonatgb05s.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33Firebase1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDIZUz4FER8rLTS68QIb6nCPKWZ41XKPno',
    appId: '1:883025666135:ios:0dce84f49a6d97ff644312',
    messagingSenderId: '883025666135',
    projectId: 'todo-799e1',
    storageBucket: 'todo-799e1.appspot.com',
    iosClientId: '883025666135-psnprt59do9s4kjbvm28l3g2i2ofosin.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33Firebase1.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhaHNQkZsoRH3ybBXQk8PZA6t5OTmGdhQ',
    appId: '1:883025666135:web:9a7057ec828ebc23644312',
    messagingSenderId: '883025666135',
    projectId: 'todo-799e1',
    authDomain: 'todo-799e1.firebaseapp.com',
    storageBucket: 'todo-799e1.appspot.com',
    measurementId: 'G-4K08RD0KRG',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyBhaHNQkZsoRH3ybBXQk8PZA6t5OTmGdhQ',
    appId: '1:883025666135:web:efdb8e86a274918e644312',
    messagingSenderId: '883025666135',
    projectId: 'todo-799e1',
    authDomain: 'todo-799e1.firebaseapp.com',
    storageBucket: 'todo-799e1.appspot.com',
    measurementId: 'G-V245N8MQ69',
  );
}