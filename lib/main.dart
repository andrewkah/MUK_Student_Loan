import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';
import 'package:mak_scholar1/authentication_files/dependency_injection.dart';
import 'package:mak_scholar1/authentication_files/preferences.dart';
import 'package:mak_scholar1/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'auth_screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(Authenticator()));
  // Initialize fingerprint enabled value
  await FingerprintPreferences.init();
  await LocationPreferences.init();

  runApp(const MyApp());

  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _){
      final themeProvider = Provider.of<ThemeProvider>(context);
      return GetMaterialApp(
        themeMode: themeProvider.themeMode,
        darkTheme: MyThemes.darkTheme,
        theme: MyThemes.lightTheme,
        home: const SplashScreen(),
      );
    },
  );
}

// ADD FLUTTER SPINKIT for the loading animations
