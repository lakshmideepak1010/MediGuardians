import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAUjbN4kXSdPdgakiEqCuas5v9E4IymzIc",
            authDomain: "mediguardians-62884.firebaseapp.com",
            projectId: "mediguardians-62884",
            storageBucket: "mediguardians-62884.firebasestorage.app",
            messagingSenderId: "16457517831",
            appId: "1:16457517831:web:ba2a37492b560ca39953a2",
            measurementId: "G-GNQN4TXK2N"));
  } else {
    await Firebase.initializeApp();
  }
}
