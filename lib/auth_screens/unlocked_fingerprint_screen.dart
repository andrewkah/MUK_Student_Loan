import 'package:flutter/material.dart';

class FingerPrintUnlockedScreen extends StatelessWidget {
  const FingerPrintUnlockedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column(
            children: <Widget>[
              Icon(Icons.lock_open_rounded, color: Colors.primaryGreen, size: 80,),
              Text("UNLOCKED", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.primaryGreen,
              ),),
              SizedBox(height: 120,),
              Stack(
                children: [
                  Icon(Icons.fingerprint_outlined, color: Colors.primaryGreen, size: 130,),
                  Positioned(
                      top: 85,
                      right: 7,
                      child: Container(color: Colors.white,
                        child: Icon(Icons.task_alt, color: Colors.primaryGreen, size: 40,),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
