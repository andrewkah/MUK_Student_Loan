// faq_screen.dart

import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FAQs"),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [],
          ),
        )// Add your FAQ content here,
    );
  }
}
