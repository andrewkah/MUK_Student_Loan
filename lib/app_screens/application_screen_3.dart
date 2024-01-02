import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../widgets/custom_appbar.dart';

class ApplicationScreen3 extends StatefulWidget {
  const ApplicationScreen3({super.key});

  @override
  State<ApplicationScreen3> createState() => _ApplicationScreen3State();
}

class _ApplicationScreen3State extends State<ApplicationScreen3> {
  final _formKey2 = GlobalKey<FormBuilderState>();
  String? _selectedAnswer1 = 'no';
  String? _selectedAnswer2 = 'no';
  String? _selectedLoanCategory = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "APPLICATION", onPressed: (){ Navigator.of(context).pop(true); },),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
            child: FormBuilder(
              key: _formKey2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "PART IV: Previous Admissions and Awards",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "a. Have you applied for the Makerere University Student Loan before?",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 'yes1', // Set a group value for radio buttons
                              groupValue: _selectedAnswer1,
                              onChanged: (value) {
                                setState(() {
                                  _selectedAnswer1 = value;
                                });
                              }),
                          const Text("Yes", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'no1',
                              groupValue: _selectedAnswer1,
                              onChanged: (value) {
                                setState(() {
                                  _selectedAnswer1 = value;
                                });
                              }),
                          const Text("No", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "b. If yes, were you awarded the Student Loan?",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 'yes2',
                              groupValue: _selectedAnswer2,
                              onChanged: (value) {
                                setState(() {
                                  _selectedAnswer2 = value;
                                });
                              }),
                          const Text("Yes", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 'no2',
                              groupValue: _selectedAnswer2,
                              onChanged: (value) {
                                setState(() {
                                  _selectedAnswer2 = value;
                                });
                              }),
                          const Text("No", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "PART V: Student Loan Information",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Indicate the Loan category you wish to be considered for:",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: '25',
                              groupValue: _selectedLoanCategory,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLoanCategory = value;
                                });
                              }),
                          const Text("25%", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: '50',
                              groupValue: _selectedLoanCategory,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLoanCategory = value;
                                });
                              }),
                          const Text("50%", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: '75%',
                              groupValue: _selectedLoanCategory,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLoanCategory = value;
                                });
                              }),
                          const Text("75%", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: '100',
                              groupValue: _selectedLoanCategory,
                              onChanged: (value) {
                                setState(() {
                                  _selectedLoanCategory = value;
                                });
                              }),
                          const Text("100%", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "Interest rate is at 15% amortised over an agreed repayment period.",
                    style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
