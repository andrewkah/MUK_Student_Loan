import 'dart:core';
import 'package:flutter/material.dart';
import 'package:google_translate/google_translate.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/custom_button.dart';

class TermsConditionsScreen extends StatefulWidget {
  final VoidCallback? onAgree;

  const TermsConditionsScreen({super.key, this.onAgree});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  bool translationComplete = true;
  bool agree = false;
  final TextStyle? unSelectedStyle = const TextStyle(fontSize: 15,);
  final TextStyle? selectedStyle = const TextStyle(fontSize: 15, color: Colors.grey);

  String textOneOriginal = "Loan Agreement Terms and Conditions";
  String textOneTranslated = "";
  String textTwoOriginal = "COMMENCEMENT";
  String textTwoTranslated = "";
  String textThreeOriginal = "These terms form an agreement between you and us, so please make sure that you understand all of them. You agree that you will only use this mobile application in line with these terms and any additional terms mentioned below that may apply, including any terms and conditions incorporated by reference to applicable laws, rules and regulations. Important clauses, which may limit out responsibility or invlove some risk for you will be in bold or italics. You must pay special attention to these clauses.";
  String textThreeTranslated = "";
  String textFourOriginal = "This mobile application is provided by Makerere Univeristy to enable financially unstable students access student loan services offered by Makerere University in collaboration with the Higher Education Students Funding Board. The terms and conditions apply when using the mobile application and the laws of jurisdiction from or in which those services are provided to you apply accordingly ";
  String textFourTranslated = "";
  String textFiveOriginal = "Definitions";
  String textFiveTranslated = "";
  String textSevenOriginal = "We have defined some words for consistency. These words will begin with a capital letter, where indicated. Singular words include the plural and the other was around";
  String textSevenTranslated = "";
  String textEightOriginal = "Access Codes: ";
  String textEightTranslated = "";
  String textSixOriginal = " Any of your secret numbers used to access our services, including your personal Identification Number (PIN) or one-time PIN (OTP), passwords, usernames, or email addresses.";
  String textSixTranslated = "";
  String textNineOriginal = "Account: ";
  String textNineTranslated = "";
  String textTenOriginal = " Any account or portfolio opened at your request by us in your name, or for which you are responsible.";
  String textTenTranslated = "";
  String textElevenOriginal = "App Store: ";
  String textElevenTranslated = "";
  String textTwelveOriginal = "Your Devices's Application store provided by, for example Apple, Blackberry or Android as is applicable to you, from which you download the application.";
  String textTwelveTranslated = "";
  String textThirteenOriginal = "An internet service provider, which is an organisation that provides access to the internet.";
  String textThirteenTranslated = "";
  String textFourteenOriginal = "A One-Time Pin which you will receive to validate your transaction and which is valid for Transaction only.";
  String textFourteenTranslated = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        trailingIcon: Icons.translate_outlined,
        title: "T&C",
        onPressed: () {
          Navigator.of(context).pop(true);
        },
        onTrailingPressed: () async {
          // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AutoBlurredCircularProgress()));
          await textOneOriginal.translate().then((value) {
            setState(() {
              translationComplete = false;
              textOneTranslated = value;
            });
          });
          await textTwoOriginal.translate().then((value) {
            setState(() {
              textTwoTranslated = value;
            });
          });
          await textThreeOriginal.translate().then((value) {
            setState(() {
              textThreeTranslated = value;
            });
          });
          await textFourOriginal.translate().then((value) {
            setState(() {
              textFourTranslated = value;
            });
          });
          await textFiveOriginal.translate().then((value) {
            setState(() {
              textFiveTranslated = value;
            });
          });
          await textSevenOriginal.translate().then((value) {
            setState(() {
              textSevenTranslated = value;
            });
          });
          await textSixOriginal.translate().then((value) {
            setState(() {
              textSixTranslated = value;
            });
          });
          await textEightOriginal.translate().then((value) {
            setState(() {
              textEightTranslated = value;
            });
          });
          await textNineOriginal.translate().then((value) {
            setState(() {
              textNineTranslated = value;
            });
          });
          await textTenOriginal.translate().then((value) {
            setState(() {
              textTenTranslated = value;
            });
          });
          await textElevenOriginal.translate().then((value) {
            setState(() {
              textElevenTranslated = value;
            });
          });
          await textTwelveOriginal.translate().then((value) {
            setState(() {
              textTwelveTranslated = value;
            });
          });
          await textThirteenOriginal.translate().then((value) {
            setState(() {
              textThirteenTranslated = value;
            });
          });
          await textFourteenOriginal.translate().then((value) {
            setState(() {
              textFourteenTranslated = value;
              translationComplete = true;
            });
          });
        },
      ),
      body: Stack(
        children: [
          translationComplete ? SingleChildScrollView(
            child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 24.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                       textOneTranslated.isNotEmpty ? textOneTranslated : textOneOriginal,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
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
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                const TextSpan(text: "1. "),
                                TextSpan(
                                  text: textTwoTranslated.isNotEmpty ? textTwoTranslated.toUpperCase() : textTwoOriginal,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        textThreeTranslated.isNotEmpty ? textThreeTranslated : textThreeOriginal,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        textFourTranslated.isNotEmpty ? textFourTranslated : textFourOriginal,
                        style: const TextStyle(fontSize: 15),),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                const TextSpan(text: "2. "),
                                TextSpan(
                                  text: textFiveTranslated.isNotEmpty ? textFiveTranslated.toUpperCase() : textFiveOriginal,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          textSevenTranslated.isNotEmpty ? textSevenTranslated : textSevenOriginal,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: "2.1 ",
                                style: TextStyle(fontSize: 15),
                              ),
                              TextSpan(
                                  text: textEightTranslated.isNotEmpty ? textEightTranslated : textEightOriginal,
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                    textSixTranslated.isNotEmpty ? textSixTranslated : textSixOriginal,
                                style: const TextStyle(fontSize: 15),)
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: "2.2 ",
                                style: TextStyle(fontSize: 15),
                              ),
                              TextSpan(
                                  text: textNineTranslated.isNotEmpty ? textNineTranslated : textNineOriginal,
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                  textTenTranslated.isNotEmpty ? textTenTranslated : textTenOriginal,
                                style: const TextStyle(fontSize: 15),)
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: "2.3 ",
                                style: TextStyle(fontSize: 15),
                              ),
                              TextSpan(
                                  text: textElevenTranslated.isNotEmpty ? textElevenTranslated : textElevenOriginal,
                                  style:
                                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text: textTwelveTranslated.isNotEmpty ? textTwelveTranslated : textTwelveOriginal,
                                style: const TextStyle(fontSize: 15),)
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: "2.4 ",
                                style: TextStyle(fontSize: 15),
                              ),
                              const TextSpan(
                                  text: "ISP: ",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                  textThirteenTranslated.isNotEmpty ? textThirteenTranslated : textThirteenOriginal,
                                style: const TextStyle(fontSize: 15),)
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: "2.5 ",
                                style: TextStyle(fontSize: 15),
                              ),
                              const TextSpan(
                                  text: "OTP: ",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              TextSpan(
                                  text:
                                  textFourteenTranslated.isNotEmpty ? textFourteenTranslated : textFourteenOriginal,
                                style: const TextStyle(fontSize: 15),)
                            ]),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
          ) : const Center(child: CircularProgressIndicator()),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),   // Adjust the radius as needed
                    topRight: Radius.circular(25.0),
                  ), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // Spread radius
                      blurRadius: 2, // Blur radius
                      offset: const Offset(0, 1), // Offset in x and y
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              agree = !agree;
                            });
                          },
                          child: Text(
                            "I agree to the terms and conditions above.",
                            style: agree ? selectedStyle : unSelectedStyle,
                          ),
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
