import 'package:flutter/material.dart';
import 'package:mak_scholar1/auth_screens/login_screen.dart';
import 'package:mak_scholar1/auth_screens/registration_screen.dart';
import 'package:mak_scholar1/widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // login button
    final loginButton = CustomButton(title: "LOGIN", titleSize: 25, paddingHorizontal: 30, paddingVertical: 15, elevation: 5, borderRadius: 30,);

    // register button
    final registerButton = CustomButton(title: "SIGNUP", titleSize: 25, paddingHorizontal: 30, paddingVertical: 15, elevation: 5, borderRadius: 30,);


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 220,
                child: Image.asset("assets/images/Mak-Logo.png",
                  fit: BoxFit.contain,)
            ),
            const Text("STUDENT FUND", style: TextStyle(
                color: Colors.primaryGreen,
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),),
            const SizedBox(height: 50,),
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
