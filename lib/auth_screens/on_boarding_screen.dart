import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/bottom_navigation_bar.dart';
import 'package:mak_scholar1/auth_screens/login_screen.dart';
import 'package:mak_scholar1/auth_screens/registration_screen.dart';
import 'package:mak_scholar1/authentication_files/fingerprint_setting_controller.dart';
import 'package:mak_scholar1/widgets/custom_button.dart';
import '../authentication_files/authentication_repository.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {

    // login button
    final loginButton = CustomButton(title: "SIGN IN", titleSize: 20, paddingHorizontal: 30, paddingVertical: 15, borderRadius: 20, onPressed: () async {
      bool fingerprintEnabled = FingerprintPreferences.getPreference();
      if(fingerprintEnabled){
        bool auth = await FingerprintAuthenticator.authentication();
        if (auth && fingerprintEnabled) {
          Get.offAll(() => const BottomNavBarScreen());
        }
      } else {
        Get.to(() => LogInScreen());
      }
    },);

    // register button
    final registerButton = CustomButton(title: "SIGN UP", titleSize: 20, paddingHorizontal: 30, paddingVertical: 15, borderRadius: 20, onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    },);

    return Scaffold(
      body: Center(
        child: Padding(padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 220,
                child: Image.asset("assets/images/Mak-Logo.png",
                  width: 280, height: 280,)
            ),
            const Text("STUDENT FUND", style: TextStyle(
                color: Color.fromARGB(255, 0, 147, 71),
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
            const SizedBox(height: 120,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                loginButton,
                const SizedBox(width: 20,),
                registerButton,
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
