// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCusHZ3LndK_hAIztpQrFaxRFBqMZj60uM',
    appId: '1:222511398580:web:0664af0da63d3451ba21e1',
    messagingSenderId: '222511398580',
    projectId: 'convo-zone',
    authDomain: 'convo-zone.firebaseapp.com',
    storageBucket: 'convo-zone.appspot.com',
    measurementId: 'G-CGY5MD7VFK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMoXrtRRRAUAoHdF2mG05H2kuieMuub20',
    appId: '1:222511398580:android:a0e5528ec977a54bba21e1',
    messagingSenderId: '222511398580',
    projectId: 'convo-zone',
    storageBucket: 'convo-zone.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCusHZ3LndK_hAIztpQrFaxRFBqMZj60uM',
    appId: '1:222511398580:web:b53938664ed0d67dba21e1',
    messagingSenderId: '222511398580',
    projectId: 'convo-zone',
    authDomain: 'convo-zone.firebaseapp.com',
    storageBucket: 'convo-zone.appspot.com',
    measurementId: 'G-88D7H2P5EL',
  );
}
