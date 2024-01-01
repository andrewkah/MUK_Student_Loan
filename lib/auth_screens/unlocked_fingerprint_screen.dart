import 'package:flutter/material.dart';

class FingerPrintUnlockedScreen extends StatelessWidget {
  const FingerPrintUnlockedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column(
            children: <Widget>[
              const Icon(Icons.lock_open_rounded, color: const Color.fromARGB(255, 0, 147, 71), size: 80,),
              const Text("UNLOCKED", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 0, 147, 71),
              ),),
              const SizedBox(height: 120,),
              Stack(
                children: [
                  const Icon(Icons.fingerprint_outlined, color: const Color.fromARGB(255, 0, 147, 71), size: 130,),
                  Positioned(
                      top: 85,
                      right: 7,
                      child: Container(color: Colors.white,
                        child: const Icon(Icons.task_alt, color: const Color.fromARGB(255, 0, 147, 71), size: 40,),
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
