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
    apiKey: 'AIzaSyDMJPONN1rVVrAaMQmMO7kfNLtBvnmYu74',
    appId: '1:116177160958:web:48f11d1af214dab9b273af',
    messagingSenderId: '116177160958',
    projectId: 'login-firebase-test-e5768',
    authDomain: 'login-firebase-test-e5768.firebaseapp.com',
    storageBucket: 'login-firebase-test-e5768.appspot.com',
    measurementId: 'G-MHDZC41VMV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhstaOUwdfA9bIgQatJgDwxHtFygXZMY',
    appId: '1:116177160958:android:a357aefb02e717b0b273af',
    messagingSenderId: '116177160958',
    projectId: 'login-firebase-test-e5768',
    storageBucket: 'login-firebase-test-e5768.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmIqtuVh7lXE3W4P1k9I8uV3CxYZ9dGmc',
    appId: '1:116177160958:ios:66b3f7a1a8bddbdfb273af',
    messagingSenderId: '116177160958',
    projectId: 'login-firebase-test-e5768',
    storageBucket: 'login-firebase-test-e5768.appspot.com',
    iosClientId: '116177160958-9u608kr2gcu0i9ojt0ipmr4odbn692gm.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireBase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDmIqtuVh7lXE3W4P1k9I8uV3CxYZ9dGmc',
    appId: '1:116177160958:ios:66b3f7a1a8bddbdfb273af',
    messagingSenderId: '116177160958',
    projectId: 'login-firebase-test-e5768',
    storageBucket: 'login-firebase-test-e5768.appspot.com',
    iosClientId: '116177160958-9u608kr2gcu0i9ojt0ipmr4odbn692gm.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireBase',
  );
}
