import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "PAY", onPressed: (){ Navigator.of(context).popAndPushNamed("/");},),
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
