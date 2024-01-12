import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/auth_screens/forgot_password_screen.dart';
import 'package:mak_scholar1/auth_screens/registration_screen.dart';
import 'package:mak_scholar1/authentication_files/signin_controller.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  // form key
  final _loginFormKey = GlobalKey<FormBuilderState>();

  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    final stdEmailField = CustomEmailField(
        controller: controller.email,
        name: "stdEmail",
        fieldLabel: "Student Email");

    // Password field
    final passwordField = CustomPasswordField(
        name: "password",
        controller: controller.password,
        fieldLabel: "Password");

    // Login Button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromARGB(255, 0, 147, 71),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        minWidth: MediaQuery.of(context).size.width*0.5,
        onPressed: () {
          if(_loginFormKey.currentState!.validate()){
              SignInController.instance.loginUser(controller.email.text.trim(),
              controller.password.text.trim());
          }
        },
        child: const Text(
          "SIGN IN",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );

    // Render
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: FormBuilder(
              key: _loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: 220,
                      child: Image.asset(
                        "assets/images/Mak-Logo.png",
                        width: 200, height: 200,
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: const Text(
                      "STUDENT FUND USER LOGIN",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 147, 71),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                  stdEmailField,
                  const SizedBox(height: 20),
                  passwordField,
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordScreen())); },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 147, 71),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  loginButton,
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => RegisterScreen(
                                // onAgree: () {
                                //   Navigator.of(context).pop();
                                // },
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 147, 71),
                              fontWeight: FontWeight.bold,
                              // decoration: TextDecoration.underline,
                              decorationColor: Color.fromARGB(255, 0, 147, 71),
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ],
              )
          ),
        ),
      )
      ),
    );
  }
}
