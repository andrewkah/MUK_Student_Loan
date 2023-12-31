import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/custom_button.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "T&C", onPressed: (){ Navigator.of(context).pop(true); },),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 24.0),
                child: const Column(
                  children: <Widget>[
                    Text(
                      "Thank you for considering our loan services. Before we proceed, it's crucial to understand and agree to the terms and conditions.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "By registering for a loan through this app, you acknowledge and agree to the following:",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "1. "),
                            TextSpan(
                                text: "Loan Agreement: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "You are entering into a legal agreement to borrow a specific amount of money from the lender, subject to terms outlined in the loan agreement provided within the app.")
                          ]),
                    ),
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "2. "),
                            TextSpan(
                                text: "Interest and Fees: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "You will be subjected to interest rates and potential fees as defined in the loan agreement. It's important to review and understand the interest rates, processing fees, and any additional charges associated with the loan.")
                          ]),
                    ),
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "3. "),
                            TextSpan(
                                text: "Repayment Terms: ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "You agree to adhere to the repayment schedule as outlined in the loan agreement. failure to make timely payments may result in penalties, increased interest rates, and impact your balance.")
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 3,
                endIndent: 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: agree,
                            side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(
                                    width: 2.0, color: Colors.primaryGreen)),
                            activeColor: Colors.primaryGreen,
                            onChanged: (bool? value) {
                              setState(() {
                                agree = value!;
                              });
                            }),
                        Text("I agree to the terms and conditions."),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomButton(
                        title: "CONTINUE",
                        titleSize: 18,
                        paddingHorizontal: 30,
                        paddingVertical: 15,
                        borderRadius: 30,
                        onPressed: agree
                            ? () {
                          /// Continue with the button logic
                          Navigator.of(context).pop(true);
                              }
                            : null,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
