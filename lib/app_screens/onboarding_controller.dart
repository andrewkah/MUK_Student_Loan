import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';
import 'package:mak_scholar1/models/user_repository.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final _authRepo = Get.put(Authenticator());
  final _userRepo = Get.put(UserRepository());
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null){
      return _userRepo.getUserDetails(email);
    } else{
      Get.snackbar("Error", "Login to continue");
    }
  }
}