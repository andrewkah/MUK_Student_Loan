import 'package:flutter/material.dart';

class FingerPrintLockedScreen extends StatelessWidget {
  const FingerPrintLockedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: const Column(
            children: <Widget>[
              Icon(Icons.lock_outlined, color: const Color.fromARGB(255, 0, 147, 71), size: 80,),
              Text("LOCKED", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 0, 147, 71),
              ),),
              SizedBox(height: 120,),
              Icon(Icons.fingerprint_outlined, color: const Color.fromARGB(255, 0, 147, 71), size: 130,),
              Text("Scan your Fingerprint", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 147, 71),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
