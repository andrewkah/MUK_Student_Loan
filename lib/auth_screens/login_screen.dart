import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  // form key
  final _formkey = GlobalKey<FormBuilderState>();

  // editing controller
  final TextEditingController stdNoController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    final stdNoField = FormBuilderTextField(
      name: "stdNo",
      autofocus: false,
      controller: stdNoController,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.numeric(errorText: "Must contain integers only"),
        FormBuilderValidators.minLength(10, errorText: "At least 10 numbers"),
        FormBuilderValidators.maxLength(12),
      ]),
      decoration: const InputDecoration(
          labelText: "Student Number",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )),
    );

    // Password field
    final passwordField = FormBuilderTextField(
      name: "password",
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
      ]),
      decoration: const InputDecoration(
          labelText: "College",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )),
    );

    // Login Button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            return;
          }
        },
        child: const Text(
          "Login",
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
        child: Container(
            constraints: BoxConstraints(maxWidth: double.infinity),
            child: Padding(
              padding: const EdgeInsets.all(34.0),
              child: FormBuilder(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 220,
                          child: Image.asset(
                            "assets/images/Mak-Logo.png",
                            fit: BoxFit.contain,
                          )),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: const Text(
                          "STUDENT FUND USER LOGIN",
                          style: TextStyle(
                              color: Colors.primaryGreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 30),
                      stdNoField,
                      const SizedBox(height: 20),
                      passwordField,
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      loginButton,
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("By using this app, you agree to out "),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TermsConditionsScreen()));
                              },
                              child: const Text(
                                "T&Cs",
                                style: TextStyle(
                                    color: Colors.primaryGreen,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            )),
      )),
    );
  }
}
