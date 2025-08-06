import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDTtYV0UQ2KK4LX4SiZBaSH-xY4CZQ2riI",
            authDomain: "footprint-fixkg3.firebaseapp.com",
            projectId: "footprint-fixkg3",
            storageBucket: "footprint-fixkg3.appspot.com",
            messagingSenderId: "1052885346657",
            appId: "1:1052885346657:web:e955247b36568083e1bd20"));
  } else {
    await Firebase.initializeApp();
  }
}
