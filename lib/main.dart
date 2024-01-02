import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';
import 'auth_screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(Authenticator()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 147, 71)),
      ),
      home: const SplashScreen(),

    );
  }
}

// ADD FLUTTER SPINKIT for the loading animations
