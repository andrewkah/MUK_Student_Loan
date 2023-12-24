import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/row_text_fields.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints(maxWidth: double.infinity),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
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
                  const SizedBox(width: 15,),
                  const SizedBox(
                      child: RowTextFields(
                        titleText: "Hello, ",
                        subTitleText: "MARTIN KALEMA",
                        textColor: Colors.primaryGreen,
                        textSize: 22,
                      )),
                ],
              ),
              const Divider(
                color: Colors.grey,
                height: 20,
                thickness: 2,
                indent: 3,
                endIndent: 3,
              ),
              const SizedBox(height: 20),
              const RowTextFields(
                titleText: "COLLEGE:  ",
                subTitleText: "CoCIS",
                textColor: Colors.primaryGreen,
                textSize: 22,
              ),
              const RowTextFields(
                titleText: "PROGRAMME:  ",
                subTitleText: "BSSE",
                textColor: Colors.primaryGreen,
                textSize: 22,
              ),
              const RowTextFields(
                titleText: "CURRENT YR:  ",
                subTitleText: "2023/2024",
                textColor: Colors.primaryGreen,
                textSize: 22,
              ),
              const RowTextFields(
                titleText: "ACCOUNT BAL:  ",
                subTitleText: "0.00/=",
                textColor: Colors.red,
                textSize: 22,
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
                        color: Colors.primaryGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
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
                    color: Colors.primaryGreen,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RowTextFields(
                                  titleText: "Loan Balance:  ",
                                  subTitleText: "1,977,138/=",
                                  textColor: Colors.primaryGreen,
                                  textSize: 19,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                RowTextFields(
                                  titleText: "Semester:  ",
                                  subTitleText: "II",
                                  textColor: Colors.primaryGreen,
                                  textSize: 19,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                RowTextFields(
                                  titleText: "Academic Year:  ",
                                  subTitleText: "2022/2023",
                                  textColor: Colors.primaryGreen,
                                  textSize: 19,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                RowTextFields(
                                  titleText: "Date due:  ",
                                  subTitleText: "06/08/2023",
                                  textColor: Colors.red,
                                  textSize: 19,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: CustomButton(title: "PAY LOAN", titleSize: 16, paddingHorizontal: 25, paddingVertical: 15, elevation: 0.0, borderRadius: 18,),
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomRight,
                child: CustomButton(title: "APPLY FOR LOAN", titleSize: 20, paddingHorizontal: 30, paddingVertical: 15, elevation: 0.0, borderRadius: 30,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
