import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mak_scholar1/app_screens/bottom_navigation_bar.dart';
import 'package:get/get.dart';
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

  bool _isLoading = false;
  void _handleSubmit() {
    setState(() {
      _isLoading = true; // Set loading state to true when button is pressed
    });

    // Simulating some asynchronous operation, delaying for 2 seconds
    Future.delayed(const Duration(seconds: 4), () {
      // After the operation is done, navigate to the next screen or perform any action
      Get.offAll(() => const BottomNavBarScreen());
    }).then((_) {
      setState(() {
        _isLoading = false; // Set loading state back to false when operation is completed
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "APPLICATION", onPressed: (){ Navigator.of(context).pop(true); },),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
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
                  const Text(
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
                  const Text(
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
                  const Text(
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
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {
              if (!_isLoading) {
                _handleSubmit();
                Future.delayed(const Duration(seconds: 6), () {
                  Get.snackbar(
                    "Submission Successful",
                    "Your application has been received.",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.redAccent.withOpacity(0.1),
                    colorText: Colors.green,
                  );
                });
              }
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Visibility(
                  visible: !_isLoading,
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 147, 71),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Visibility(
                  visible: _isLoading,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 16.0), // Add right margin to the progress indicator
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 0, 147, 71)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
