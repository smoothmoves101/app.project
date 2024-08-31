import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBSGMBEwjgk9zcI78UKZgmOyBTDaQ65C8s",
            authDomain: "walker-enterprise-worker.firebaseapp.com",
            projectId: "walker-enterprise-worker",
            storageBucket: "walker-enterprise-worker.appspot.com",
            messagingSenderId: "363243454478",
            appId: "1:363243454478:web:86a6f5de9ff24916e03c5f",
            measurementId: "G-DXZ8TLY86Q"));
  } else {
    await Firebase.initializeApp();
  }
}
