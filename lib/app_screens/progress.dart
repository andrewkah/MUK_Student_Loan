import 'dart:ui';

import 'package:flutter/material.dart';

class AutoBlurredCircularProgress extends StatefulWidget {
  const AutoBlurredCircularProgress({super.key});

  @override
  State<AutoBlurredCircularProgress> createState() => _AutoBlurredCircularProgressState();
}

class _AutoBlurredCircularProgressState extends State<AutoBlurredCircularProgress> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          if (_isLoading)
            Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: const Color.fromARGB(255, 0, 147, 71).withOpacity(0.1),
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
