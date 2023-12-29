import 'package:flutter/material.dart';

class FingerPrintLockedScreen extends StatelessWidget {
  const FingerPrintLockedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: const Column(
            children: <Widget>[
              Icon(Icons.lock_outlined, color: Colors.primaryGreen, size: 80,),
              Text("LOCKED", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.primaryGreen,
              ),),
              SizedBox(height: 120,),
              Icon(Icons.fingerprint_outlined, color: Colors.primaryGreen, size: 130,),
              Text("Scan your Fingerprint", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: Colors.primaryGreen,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
