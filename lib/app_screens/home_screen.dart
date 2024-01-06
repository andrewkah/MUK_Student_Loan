import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/application_screen_1.dart';
import 'package:mak_scholar1/app_screens/pay_screen.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';

import '../widgets/custom_button.dart';
import '../widgets/row_text_fields.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 0, 147, 71),
          centerTitle: true,
          toolbarHeight: 50.0,
          title: const Text(
            'HOME',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 60,
                        child: Image.asset(
                          "assets/images/Mak-Logo.png",
                          fit: BoxFit.contain,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                        child: RowTextFields(
                      titleText: "Hello, ",
                      subTitleText: "MARTIN KALEMA",
                      textColor: Color.fromARGB(255, 0, 147, 71),
                      textSize: 22,
                    )),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                  indent: 3,
                  endIndent: 3,
                ),
                const SizedBox(height: 20),
                const RowTextFields(
                  titleText: "COLLEGE:  ",
                  subTitleText: "CoCIS",
                  textColor: Color.fromARGB(255, 0, 147, 71),
                  textSize: 20,
                ),
                const RowTextFields(
                  titleText: "PROGRAMME: ",
                  subTitleText: "BSSE",
                  textColor: Color.fromARGB(255, 0, 147, 71),
                  textSize: 20,
                ),
                const RowTextFields(
                  titleText: "CURRENT YR: ",
                  subTitleText: "2023/2024",
                  textColor: Color.fromARGB(255, 0, 147, 71),
                  textSize: 20,
                ),
                const RowTextFields(
                  titleText: "ACCOUNT BAL: ",
                  subTitleText: "0.00/=",
                  textColor: Colors.red,
                  textSize: 20,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "PRINT EXAM PERMIT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 147, 71),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 147, 71),
                      width: 2.0,
                    ),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 68,
                                child: Image.asset(
                                  "assets/images/icons8-coins-96.png",
                                  fit: BoxFit.contain,
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            const SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RowTextFields(
                                    titleText: "Loan Balance: ",
                                    subTitleText: "1,977,138/=",
                                    titleColor: Colors.black87,
                                    textColor: Color.fromARGB(255, 0, 147, 71),
                                    textSize: 16,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  RowTextFields(
                                    titleText: "Semester: ",
                                    subTitleText: "II",
                                    titleColor: Colors.black87,
                                    textColor: Color.fromARGB(255, 0, 147, 71),
                                    textSize: 16,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  RowTextFields(
                                    titleText: "Academic Year: ",
                                    subTitleText: "2022/2023",
                                    titleColor: Colors.black87,
                                    textColor: Color.fromARGB(255, 0, 147, 71),
                                    textSize: 16,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  RowTextFields(
                                    titleText: "Date due: ",
                                    subTitleText: "06/08/2023",
                                    titleColor: Colors.black87,
                                    textColor: Colors.red,
                                    textSize: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          title: "PAY LOAN",
                          titleSize: 18,
                          paddingHorizontal: 25,
                          paddingVertical: 15,
                          borderRadius: 18,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const PayScreen()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomButton(
                    title: "APPLY FOR LOAN",
                    titleSize: 18,
                    paddingHorizontal: 30,
                    paddingVertical: 15,
                    borderRadius: 30,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => TermsConditionsScreen(
                                onAgree: (){
                                  Get.off(() => const ApplicationScreen1()
                                  );
                                },
                              )
                          )
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );
}
