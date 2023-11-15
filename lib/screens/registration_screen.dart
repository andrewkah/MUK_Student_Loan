import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  // form key
  final _formkey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();
  final TextEditingController stdEmailController = TextEditingController();
  final TextEditingController stdNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // first name field
    final firstNameField = TextFormField( autofocus: false, controller: firstNameController, keyboardType: TextInputType.text,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "FIRST NAME",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // last name field
    final lastNameField = TextFormField( autofocus: false, controller: lastNameController, keyboardType: TextInputType.text,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "SECOND NAME",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // college field
    final collegeField = TextFormField( autofocus: false, controller: collegeController, keyboardType: TextInputType.text,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "COLLEGE",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // student email field
    final stdEmailField = TextFormField( autofocus: false, controller: stdEmailController, keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "STUDENT EMAIL",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // student number field
    final stdNoField = TextFormField( autofocus: false, controller: stdNoController, keyboardType: TextInputType.text,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "STUDENT NUMBER",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // Password field
    final passwordField = TextFormField( autofocus: false, obscureText: true, controller: passwordController,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "PASSWORD",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // student number field
    final confirmPasswordField = TextFormField( autofocus: false, controller: confirmPasswordController, obscureText: true,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 12, 20, 12),
          hintText: "CONFIRM PASSWORD",
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );


    // signup Button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text("SIGN UP", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                              child: Image.asset("assets/images/Mak-Logo.png",
                                fit: BoxFit.contain,)
                          ),
                          SizedBox(
                            width: 200,
                            child: Text("STUDENT FUND USER REGISTRATION", style: TextStyle(
                                color: Colors.primaryGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 22
                            ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black, height: 20, thickness: 2, indent: 3, endIndent: 3,),
                      SizedBox(height: 22),
                      firstNameField,
                      SizedBox(height: 20),
                      lastNameField,
                      SizedBox(height: 20),
                      collegeField,
                      SizedBox(height: 20),
                      stdEmailField,
                      SizedBox(height: 20),
                      stdNoField,
                      SizedBox(height: 20),
                      passwordField,
                      SizedBox(height: 20),
                      confirmPasswordField,
                      SizedBox(height: 35),
                      signupButton,
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("By signing up, you agree to out "),
                            GestureDetector(
                              onTap: () {},
                              child: const Text("T&Cs",
                                style: TextStyle(
                                    color: Colors.primaryGreen,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    fontSize: 18),),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
