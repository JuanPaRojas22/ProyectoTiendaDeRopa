import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB1O2aRSmlu7__3zr7xJ57em0kNg8Z6Fxo",
            authDomain: "proyecto-emprendimiento-mcjzrd.firebaseapp.com",
            projectId: "proyecto-emprendimiento-mcjzrd",
            storageBucket: "proyecto-emprendimiento-mcjzrd.firebasestorage.app",
            messagingSenderId: "222276002542",
            appId: "1:222276002542:web:a027a6b9b470ecb65fc9ff"));
  } else {
    await Firebase.initializeApp();
  }
}
