import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';
import 'package:mak_scholar1/models/user_model.dart';
import 'package:mak_scholar1/models/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // fields
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController college = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController studentNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController programme = TextEditingController();
  // User Repository Controller instance
  final userRepositoryController = Get.put(UserRepository());

  void registerUser(String email, String password){
    Authenticator.instance.createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await userRepositoryController.createUser(user);
    registerUser(user.email, user.password);
  }
}
