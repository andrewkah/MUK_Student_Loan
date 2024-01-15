import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mak_scholar1/app_screens/bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/home_screen_controller.dart';
import 'package:mak_scholar1/models/loan_application_repository.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';
import '../authentication_files/authentication_repository.dart';
import '../widgets/custom_appbar.dart';

class ApplicationScreen3 extends StatefulWidget {
  const ApplicationScreen3({super.key});

  @override
  State<ApplicationScreen3> createState() => _ApplicationScreen3State();
}

class _ApplicationScreen3State extends State<ApplicationScreen3> {
  final _formKey2 = GlobalKey<FormBuilderState>();
  final controller = Get.put(LoanApplicationRepository());
  final loanController = Get.put(HomeScreenController());
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
        _isLoading =
            false; // Set loading state back to false when operation is completed
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        title: "APPLICATION",
        onPressed: () {
          Navigator.of(context).pop(true);
        },
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
            child: FormBuilder(
              key: _formKey2,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PART IV: Previous Admissions and Awards",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "a. Have you applied for the Makerere University Student Loan before?",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomRadioField(
                      name: "applied_before", optionList: ['Yes', 'No']),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 'yes1',
                  //             // Set a group value for radio buttons
                  //             groupValue: _selectedAnswer1,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedAnswer1 = value;
                  //               });
                  //             }),
                  //         const Text("Yes", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 'no1',
                  //             groupValue: _selectedAnswer1,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedAnswer1 = value;
                  //               });
                  //             }),
                  //         const Text("No", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 6),
                  Text(
                    "b. If yes, were you awarded the Student Loan?",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomRadioField(
                      name: 'awarded_loan', optionList: ['Yes', 'No']),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 'yes2',
                  //             groupValue: _selectedAnswer2,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedAnswer2 = value;
                  //               });
                  //             }),
                  //         const Text("Yes", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: 'no2',
                  //             groupValue: _selectedAnswer2,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedAnswer2 = value;
                  //               });
                  //             }),
                  //         const Text("No", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  Text(
                    "PART V: Student Loan Information",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Indicate the Loan category you wish to be considered for:",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomRadioField(
                      name: "loan_category",
                      optionList: ["25%", "50%", "75%", "100%"]),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: '25',
                  //             groupValue: _selectedLoanCategory,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedLoanCategory = value;
                  //               });
                  //             }),
                  //         const Text("25%", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: '50',
                  //             groupValue: _selectedLoanCategory,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedLoanCategory = value;
                  //               });
                  //             }),
                  //         const Text("50%", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: '75%',
                  //             groupValue: _selectedLoanCategory,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedLoanCategory = value;
                  //               });
                  //             }),
                  //         const Text("75%", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(
                  //             value: '100',
                  //             groupValue: _selectedLoanCategory,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 _selectedLoanCategory = value;
                  //               });
                  //             }),
                  //         const Text("100%", style: TextStyle(fontSize: 18)),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  Text(
                    "Interest rate is at 15% amortised over an agreed repayment period.",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
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
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 147, 71),
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              minimumSize: const Size(120, 50),// Change this color to your desired color
            ),
            onPressed: () {
              if (_formKey2.currentState!.saveAndValidate()) {
                Map<String, dynamic> formData = _formKey2.currentState!.value;
                String hasAppliedBefore = formData['applied_before'];
                String wasAwardedLoan = formData['awarded_loan'];
                String loanCategory = formData['loan_category'];

                controller.updateFromScreenThree(hasAppliedBefore, wasAwardedLoan, loanCategory);

                loanController.updateApplicationData();

                if (!_isLoading) {
                  _handleSubmit();
                }
              }
            },
            child: _isLoading ?
            const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(color: Colors.white),
            ) :
            const Text("SUBMIT",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
