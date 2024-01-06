import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  // fields
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void loginUser(String email, String password){
    Authenticator.instance.signInWithEmailAndPassword(email: email, password: password);
  }

}
