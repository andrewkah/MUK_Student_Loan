import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/custom_button.dart';

class TermsConditionsScreen extends StatefulWidget {
  final VoidCallback? onAgree;

  const TermsConditionsScreen({super.key, this.onAgree});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        title: "T&C",
        onPressed: () {
          Navigator.of(context).pop(true);
        },
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 24.0),
                  child: const Column(
                    children: <Widget>[
                      Text(
                        "Loan Agreement Terms and Conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Text(
                      //   "1. INTRODUCTION",
                      //   style: TextStyle(fontSize: 18),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: "1. "),
                                TextSpan(
                                  text: "INTRODUCTION",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "These terms form an agreement between you and us, so please make sure that you understand all of them. You agree that you will only use this mobile application in line with these terms and any additional terms mentioned below that may apply, including any terms and conditions incorporated by reference to applicable laws, rules and regulations. Important clauses, which may limit out responsibility or invlove some risk for you will be in bold or italics. You must pay special attention to these clauses.",
                        style: TextStyle(fontSize: 15),),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "This mobile application is provided by Makerere Univeristy to enable financially unstable students access student loan services offered by Makerere University in collaboration with the Higher Education Students Funding Board. The terms and conditions apply when using the mobile application and the laws of jurisdiction from or in which those services are provided to you apply accordingly ",
                        style: TextStyle(fontSize: 15),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: "2. "),
                                TextSpan(
                                  text: "DEFINITIONS",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "We have defined some words for consistency. These words will begin with a capital letter, where indicated. Singular words include the plural and the other was around",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "2.1 "),
                              TextSpan(
                                  text: "Access Codes: ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                      "Any of your secret numbers used to access our services, including your personal Identification Number (PIN) or one-time PIN (OTP), passwords, usernames, or email addresses.",
                                style: TextStyle(fontSize: 15),)
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "2.2 "),
                              TextSpan(
                                  text: "Account",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                      "Any account or portfolio opened at your request by us in your name, or for which you are responsible.",
                                style: TextStyle(fontSize: 15),)
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "2.3 "),
                              TextSpan(
                                  text: "App Store: ",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                  "Your Devices's Application store provided by, for example Apple, Blackberry or Android as is applicable to you, from which you download the app",
                                style: TextStyle(fontSize: 15),)
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "2.3 "),
                              TextSpan(
                                  text: "ISP: ",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                  "An internet service provider, which is an organisation that provides access to the internet.",
                                style: TextStyle(fontSize: 15),)
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "2.3 "),
                              TextSpan(
                                  text: "OTP: ",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                  "A One-Time Pin which you will receive to validate your transaction and which is valid for Transaction only.",
                                style: TextStyle(fontSize: 15),)
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    // const Divider(
                    //   color: Colors.grey,
                    //   thickness: 1,
                    //   indent: 15,
                    //   endIndent: 15,
                    // ),
                    Row(
                      children: [
                        Checkbox(
                            value: agree,
                            side: MaterialStateBorderSide.resolveWith((states) =>
                            const BorderSide(
                                width: 2.0,
                                color: Color.fromARGB(255, 0, 147, 71))),
                            activeColor: const Color.fromARGB(255, 0, 147, 71),
                            onChanged: (bool? value) {
                              setState(() {
                                agree = value!;
                              });
                            }),
                        const Text(
                          "I agree to the terms and conditions above.",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomButton(
                        title: "CONTINUE",
                        titleSize: 18,
                        paddingHorizontal: 25,
                        paddingVertical: 12,
                        borderRadius: 30,
                        onPressed: agree
                            ? () {
                          widget.onAgree?.call();
                        }
                            : null,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
