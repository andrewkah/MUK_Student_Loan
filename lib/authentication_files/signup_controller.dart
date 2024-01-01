import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // fields
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController college = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController studentNumber = TextEditingController();
  final TextEditingController password = TextEditingController();

  void registerUser(String email, String password){
    Authenticator.instance.createUserWithEmailAndPassword(email, password);
  }
}
