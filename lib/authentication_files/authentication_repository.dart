import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mak_scholar1/auth_screens/on_boarding_screen.dart';
import 'package:mak_scholar1/app_screens/main_screen.dart';
import 'package:mak_scholar1/authentication_files/signup_email_password_failure.dart';

class Authenticator extends GetxController{
  static Authenticator get instance => Get.find();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user){
    user == null ? Get.offAll(() => const OnBoardingScreen()) : Get.offAll(() => MainScreen());
  }

  // create user
  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword( email : email, password : password);
      firebaseUser.value != null ? Get.offAll(() => MainScreen()) : Get.offAll(() => const OnBoardingScreen());
    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      Get.snackbar(
        "Firebase Auth Exception",
        ex.message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
      // not good for production code
      // print('FIREBASE AUTH EXCEPTION -${ex.message}');
      throw ex;
    } catch (_){
      const ex = SignUpWithEmailAndPasswordFailure();
      //not  good for production code
      // print('FIREBASE AUTH EXCEPTION -${ex.message}');
      throw ex;
    }
  }

  // logging in
  Future<void> signInWithEmailAndPassword({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar(
        "Login Successful",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.green,
      );
    } on FirebaseAuthException catch(e){
      // Add some code here
      Get.snackbar(
        "Authentication Error",
        "Invalid Credentials. Try again.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
    } catch (_){
      Get.snackbar(
        "Error",
        "Something went wrong. Try again.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
    }
  }
  // Logging out
  Future<void> logout() async {
    await _auth.signOut();
    Get.offAll(() => const OnBoardingScreen());
  }

}

// Fingerprint authentication
class FingerprintAuthenticator {
  static final _auth = LocalAuthentication();

  static Future<bool> canAuthenticate() async =>
      await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  static Future<bool> authentication() async {
    try {
      if(!await canAuthenticate()){
        return false;
      }
      return await _auth.authenticate(localizedReason: "Sign in");
    } catch (e){
      // implement
      print('error $e');
      return false;
    }
  }
}