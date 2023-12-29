import 'package:flutter/material.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.primaryGreen,
        foregroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 68.0,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          icon: const Icon(
            (Icons.arrow_back_ios_new_rounded),
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("PAY", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                  height: 100,

                  child: Image.asset(
                    "assets/images/MTN-MomoPay.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              GestureDetector(
                child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    "assets/images/URA-LOGO.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
