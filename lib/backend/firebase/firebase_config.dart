import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB-UhEr4i3NRZJe43yex6pWvPVuqnq1MiI",
            authDomain: "landslide-967c3.firebaseapp.com",
            projectId: "landslide-967c3",
            storageBucket: "landslide-967c3.firebasestorage.app",
            messagingSenderId: "408767961119",
            appId: "1:408767961119:web:113304b1f3aac6af2e1d2a"));
  } else {
    await Firebase.initializeApp();
  }
}
