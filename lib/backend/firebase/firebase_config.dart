import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCSmmBHI6cb4pht-p2pa4eByoT2N2mGyPY",
            authDomain: "tiendaderopaproyecto-e5005.firebaseapp.com",
            projectId: "tiendaderopaproyecto-e5005",
            storageBucket: "tiendaderopaproyecto-e5005.firebasestorage.app",
            messagingSenderId: "342976761211",
            appId: "1:342976761211:web:0ac30e6fdfbe92fdda01de"));
  } else {
    await Firebase.initializeApp();
  }
}
