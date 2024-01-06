import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "PAY", onPressed: (){ Navigator.of(context).pop();},),
      body: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: SizedBox(
                        height: 140,
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
                      borderRadius: BorderRadius.circular(30),
                      child: SizedBox(
                        height: 140,
                        child: Image.asset(
                          "assets/images/URA-Logo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                  ),
                ],
              ),
              const Spacer(flex: 2,),
            ],
          ),

        ),
    );
  }
}
