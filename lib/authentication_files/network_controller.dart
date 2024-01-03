import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController{
  // check internet availability
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus (ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      Get.snackbar(
        "No Internet",
        "Please check your internet connection",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent.withOpacity(0.2),
        colorText: Colors.red,
        duration: const Duration(seconds: 4),
      );
    } else {
      if(Get.isSnackbarOpen){
        Get.closeCurrentSnackbar();
      }
    }
  }
}

