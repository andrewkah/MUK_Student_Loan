import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';
import 'package:mak_scholar1/auth_screens/forgot_password_screen.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';

import '../app_screens/main_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  // form key
  final _loginFormKey = GlobalKey<FormBuilderState>();

  final TextEditingController stdNoController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final stdNoField = CustomNumberField(
        controller: stdNoController,
        name: "stdNo",
        fieldLabel: "Student Number");
    // FormBuilderTextField(
    //   name: "stdNo",
    //   autofocus: false,
    //   controller: stdNoController,
    //   onSaved: (value) {
    //     stdNoController.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   autovalidateMode: AutovalidateMode.onUserInteraction,
    //   validator: FormBuilderValidators.compose([
    //     FormBuilderValidators.required(errorText: "Please fill out this field"),
    //     FormBuilderValidators.numeric(errorText: "Must contain integers only"),
    //     FormBuilderValidators.minLength(10, errorText: "At least 10 numbers"),
    //     FormBuilderValidators.maxLength(12),
    //   ]),
    //   decoration: const InputDecoration(
    //       labelText: "Student Number",
    //       labelStyle: TextStyle(fontSize: 20),
    //       contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
    //       enabledBorder: UnderlineInputBorder(
    //         borderSide: BorderSide(color: Colors.primaryGreen),
    //       ),
    //       focusedBorder: UnderlineInputBorder(
    //         borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
    //       )),
    // );

    // Password field
    final passwordField = CustomPasswordField(
        name: "password",
        controller: passwordController,
        fieldLabel: "Password");
    // FormBuilderTextField(
    //   name: "password",
    //   autofocus: false,
    //   obscureText: true,
    //   controller: passwordController,
    //   onSaved: (value) {
    //     passwordController.text = value!;
    //   },
    //   textInputAction: TextInputAction.done,
    //   autovalidateMode: AutovalidateMode.onUserInteraction,
    //   validator: FormBuilderValidators.compose([
    //     FormBuilderValidators.required(errorText: "Please fill out this field"),
    //   ]),
    //   decoration: const InputDecoration(
    //       labelText: "College",
    //       labelStyle: TextStyle(fontSize: 20),
    //       contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
    //       enabledBorder: UnderlineInputBorder(
    //         borderSide: BorderSide(color: Colors.primaryGreen),
    //       ),
    //       focusedBorder: UnderlineInputBorder(
    //         borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
    //       )),
    // );

    // Login Button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromARGB(255, 0, 147, 71),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        minWidth: MediaQuery.of(context).size.width*0.5,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
          // if (_loginFormKey.currentState!.validate()) {
          //         return;
          //       }
        },
        child: const Text(
          "LOGIN",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );

    // Render
    return Scaffold(
      backgroundColor: Colors.white,
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
                          color: const Color.fromARGB(255, 0, 147, 71),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                  stdNoField,
                  const SizedBox(height: 20),
                  passwordField,
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordScreen())); },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 147, 71),
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
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "By using this app, you agree to our",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TermsConditionsScreen()));
                        },
                        child: const Text(
                          "T&Cs",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 234, 0, 0),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: const Color.fromARGB(255, 234, 0, 0),
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      )),
    );
  }
}
