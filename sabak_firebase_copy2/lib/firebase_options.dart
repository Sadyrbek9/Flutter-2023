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
    apiKey: 'AIzaSyDn97JA55llLnId5vrZ9d_xtRiDxYHMxBw',
    appId: '1:342558427137:web:4c12786ca055e5c8731800',
    messagingSenderId: '342558427137',
    projectId: 'todocopy-9ca02',
    authDomain: 'todocopy-9ca02.firebaseapp.com',
    storageBucket: 'todocopy-9ca02.appspot.com',
    measurementId: 'G-8LNFDZWSQ0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQs4rKNbUJckzyMmgTPf0F9hZXYw1LumY',
    appId: '1:342558427137:android:cbe28010b518b886731800',
    messagingSenderId: '342558427137',
    projectId: 'todocopy-9ca02',
    storageBucket: 'todocopy-9ca02.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAos9USPIjzR3UFD6pyWKo38CY-aHnc868',
    appId: '1:342558427137:ios:b6dd853ade552762731800',
    messagingSenderId: '342558427137',
    projectId: 'todocopy-9ca02',
    storageBucket: 'todocopy-9ca02.appspot.com',
    iosClientId: '342558427137-ssndodn83bqvcuhcrggvaisdo3r49puq.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33FirebaseCopy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAos9USPIjzR3UFD6pyWKo38CY-aHnc868',
    appId: '1:342558427137:ios:e6c26cafcb8a3017731800',
    messagingSenderId: '342558427137',
    projectId: 'todocopy-9ca02',
    storageBucket: 'todocopy-9ca02.appspot.com',
    iosClientId: '342558427137-tnanmgu2tpcr1l4q9eejl1kncjd43r7n.apps.googleusercontent.com',
    iosBundleId: 'com.example.sabak33FirebaseCopy.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDn97JA55llLnId5vrZ9d_xtRiDxYHMxBw',
    appId: '1:342558427137:web:b1da9689e824cd07731800',
    messagingSenderId: '342558427137',
    projectId: 'todocopy-9ca02',
    authDomain: 'todocopy-9ca02.firebaseapp.com',
    storageBucket: 'todocopy-9ca02.appspot.com',
    measurementId: 'G-12TWLSW9TQ',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyDn97JA55llLnId5vrZ9d_xtRiDxYHMxBw',
    appId: '1:342558427137:web:b1d501f673316839731800',
    messagingSenderId: '342558427137',
    projectId: 'todocopy-9ca02',
    authDomain: 'todocopy-9ca02.firebaseapp.com',
    storageBucket: 'todocopy-9ca02.appspot.com',
    measurementId: 'G-79QLZPQPJ7',
  );
}
