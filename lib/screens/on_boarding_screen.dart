import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  @override
  Widget build(BuildContext context) {

    // login button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        // minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("LOGIN", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );

    // register button
    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        // minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("SIGN UP", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            color: Colors.white,
            child: Padding(padding: EdgeInsets.all(30.0),
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
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    loginButton,
                    SizedBox(width: 20,),
                    registerButton,
                  ],
                )
              ],
            ),
            )
        ),
      ),
    );
  }
}
