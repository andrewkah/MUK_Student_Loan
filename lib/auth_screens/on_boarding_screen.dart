import 'package:flutter/material.dart';
import 'package:mak_scholar1/app_screens/main_screen.dart';
import 'package:mak_scholar1/auth_screens/login_screen.dart';
import 'package:mak_scholar1/auth_screens/registration_screen.dart';
import 'package:mak_scholar1/widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // login button
    final loginButton = CustomButton(title: "LOGIN", titleSize: 20, paddingHorizontal: 30, paddingVertical: 15, borderRadius: 20, onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()));
    },);

    // register button
    final registerButton = CustomButton(title: "SIGN UP", titleSize: 20, paddingHorizontal: 30, paddingVertical: 15, borderRadius: 20, onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    },);

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
                  width: 200, height: 200,)
            ),
            const Text("STUDENT FUND", style: TextStyle(
                color: const Color.fromARGB(255, 0, 147, 71),
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
            const SizedBox(height: 150,),
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
