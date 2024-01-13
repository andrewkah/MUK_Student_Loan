import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';
import 'package:mak_scholar1/models/loan_application_repository.dart';
import 'package:mak_scholar1/models/user_repository.dart';

class HomeScreenController extends GetxController{
  static HomeScreenController get instance => Get.find();

  final _authRepo = Get.put(Authenticator());
  final _userRepo = Get.put(UserRepository());
  final _applicationRepo = Get.put(LoanApplicationRepository());

  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;

    if (email != null){
      return _userRepo.getUserDetails(email);
    } else{
      Get.snackbar("Error", "Login to continue");
    }
  }

  getUserApplicationData() {
    final userEmail = _authRepo.firebaseUser.value?.email;

    if (userEmail != null){
      return _applicationRepo.getApplicationDetails(userEmail);
    } else{
      Get.snackbar("Error", "Login to continue");
    }
  }


}