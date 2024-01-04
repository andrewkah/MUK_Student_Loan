import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';
import 'package:mak_scholar1/authentication_files/dependency_injection.dart';
import 'package:mak_scholar1/authentication_files/fingerprint_setting_controller.dart';
import 'auth_screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(Authenticator()));
  // Initialize fingerprint enabled value
  await FingerprintPreferences.init();

  runApp(const MyApp());

  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 147, 71)),
      ),
      theme: ThemeData.light(
        useMaterial3: true,).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 147, 71)),
      ),
      home: const SplashScreen(),
    );
  }
}

// ADD FLUTTER SPINKIT for the loading animations
