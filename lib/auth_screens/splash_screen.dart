import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mak_scholar1/auth_screens/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> 
    with SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), ()=> {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_)=> OnBoardingScreen())
      )
    });
  }

  @override
  void dispose(){
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays:  SystemUiOverlay.values);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.primaryGreen,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/Mak-Logo.png"),
            width: 300,),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(15),
                child: const Text("MAKERERE UNIVERSITY STUDENT FUND",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 28),)
            ),
          ],
        ),
      ),
    );
  }

}