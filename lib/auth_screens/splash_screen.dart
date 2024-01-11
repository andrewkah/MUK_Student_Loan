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
  late AnimationController _controller;

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const OnBoardingScreen()),
          );
        }
      }
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 3, 112, 53),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Image(image: AssetImage("assets/images/Mak-Logo.png"),
            // width: 300,),
            // const SizedBox(
            //   height: 30,
            // ),
            // Container(
            //   margin: const EdgeInsets.all(15),
            //     child: const Text("MAKERERE UNIVERSITY STUDENT FUND",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(color: Colors.white, fontSize: 28),)
            // ),
            Image.asset(
              'assets/images/green.png',
              width: 280,
              height: 280,
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                "MAKERERE UNIVERSITY STUDENT FUND",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 167, 164, 164),
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}