import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mak_scholar1/auth_screens/on_boarding_screen.dart';
import 'package:mak_scholar1/app_screens/main_screen.dart';
import 'package:mak_scholar1/authentication_files/signup_email_password_failure.dart';

class Authenticator extends GetxController{
  static Authenticator get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
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
  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
    } catch (_){

    }
  }

  Future<void> logout() async => await _auth.signOut();

}