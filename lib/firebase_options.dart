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
    apiKey: 'AIzaSyCM3PaOfwYPXdAP89IO9xhpdPx0AOMsBO4',
    appId: '1:582250606271:web:1dd3a4cdf5e5798bf7e00a',
    messagingSenderId: '582250606271',
    projectId: 'dream-chat-21ed2',
    authDomain: 'dream-chat-21ed2.firebaseapp.com',
    storageBucket: 'dream-chat-21ed2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBR8el1Q_JXpXOiBCVaVQbEIVze1zXylAA',
    appId: '1:582250606271:android:e3285f7a2dc96eebf7e00a',
    messagingSenderId: '582250606271',
    projectId: 'dream-chat-21ed2',
    storageBucket: 'dream-chat-21ed2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6gEDWqyfxkPlZoty5KcPA3F9oiWLs9PA',
    appId: '1:582250606271:ios:9521c3d09166356cf7e00a',
    messagingSenderId: '582250606271',
    projectId: 'dream-chat-21ed2',
    storageBucket: 'dream-chat-21ed2.appspot.com',
    iosClientId:
        '582250606271-svmkbdpum1v4u0iok8hbtg11rl4ejhgc.apps.googleusercontent.com',
    iosBundleId: 'com.americandreammessenger.americanDreamMessenger',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6gEDWqyfxkPlZoty5KcPA3F9oiWLs9PA',
    appId: '1:582250606271:ios:9521c3d09166356cf7e00a',
    messagingSenderId: '582250606271',
    projectId: 'dream-chat-21ed2',
    storageBucket: 'dream-chat-21ed2.appspot.com',
    iosClientId:
        '582250606271-svmkbdpum1v4u0iok8hbtg11rl4ejhgc.apps.googleusercontent.com',
    iosBundleId: 'com.americandreammessenger.americanDreamMessenger',
  );
}
