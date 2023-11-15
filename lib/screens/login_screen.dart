import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget{
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();

}

class _LogInScreenState extends State<LogInScreen>{
  // form key
  final _formkey = GlobalKey<FormState>();
  // editing controller
  final TextEditingController stdNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // email field
    final stdNoField = TextFormField( autofocus: false, controller: stdNoController, keyboardType: TextInputType.number,
      onSaved: (value) {
        stdNoController.text = value!;
        },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
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
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
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

    // Login Button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("Login", textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );

    // Render
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 220,
                        child: Image.asset("assets/images/Mak-Logo.png",
                        fit: BoxFit.contain,)
                      ),
                      const Text("STUDENT FUND", style: TextStyle(
                          color: Colors.primaryGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),),

                      SizedBox(height: 50),
                      stdNoField,
                      SizedBox(height: 30),

                      passwordField,
                      SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: const Text("Forgot Password?",
                              style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),

                      loginButton,
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("By using this app, you agree to out "),
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
                  )
              ),
            )

          ),
        )

      ),
    );
  }
}