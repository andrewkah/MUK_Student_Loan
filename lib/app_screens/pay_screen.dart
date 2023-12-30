import 'package:flutter/material.dart';
import 'package:mak_scholar1/app_screens/main_screen.dart';
import 'package:mak_scholar1/app_screens/settings_screen.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';

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
        toolbarHeight: 50.0,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          icon: const Icon(
            (Icons.arrow_back_ios_new_rounded),
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "PAY",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      "assets/images/MTN-MomoPay.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      "assets/images/URA-Logo.png",
                      fit: BoxFit.contain,
                    ),
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
