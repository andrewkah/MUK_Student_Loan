import 'package:flutter/material.dart';

class FingerPrintUnrecognisedScreen extends StatelessWidget {
  const FingerPrintUnrecognisedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
          child: Column(
            children: <Widget>[
              Icon(Icons.error_outline_outlined, color: Colors.red, size: 130,),
              SizedBox(height: 20,),
              Text("Fingerprint not recognised", style: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.w500,
                color: Colors.red,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
