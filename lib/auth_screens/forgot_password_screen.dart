import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "Forgot Password", onPressed: (){ Navigator.of(context).pop(true);},),
      body: const ForgotPasswordForm(),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController emailController = TextEditingController();

  void sendResetEmail() {
    // Step 2: Implement logic to send a password reset email
    // You can use your authentication service or backend API here
    String email = emailController.text;
    // Call a function to send the reset email
    // authService.sendPasswordResetEmail(email);
    // Show a success message or handle errors
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Spacer(flex: 2,),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text("Please input your current Email address below.", style: TextStyle(fontSize: 18, ), textAlign: TextAlign.center,),
          ),
          const Spacer(flex: 1,),
          CustomEmailField(name: "resetEmail", controller: emailController, fieldLabel: "Email Address"),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: sendResetEmail,
            child: const Text('Send Reset Email'),
          ),
          const Spacer(flex: 10,),
        ],
      ),
    );
  }
}

