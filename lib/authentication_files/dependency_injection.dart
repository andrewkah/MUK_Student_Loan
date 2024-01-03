import 'package:get/get.dart';
import 'package:mak_scholar1/authentication_files/network_controller.dart';

class DependencyInjection{
  static void init(){
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}