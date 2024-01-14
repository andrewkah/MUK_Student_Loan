import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mak_scholar1/app_screens/bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/models/loan_application_repository.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';
import '../widgets/custom_appbar.dart';

class ApplicationScreen3 extends StatefulWidget {
  const ApplicationScreen3({super.key});

  @override
  State<ApplicationScreen3> createState() => _ApplicationScreen3State();
}

class _ApplicationScreen3State extends State<ApplicationScreen3> {
  final _formKey2 = GlobalKey<FormBuilderState>();

  final controller = Get.put(LoanApplicationRepository());

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
                  SizedBox(height: 6),
                  Text(
                    "b. If yes, were you awarded the Student Loan?",
                    style: TextStyle(fontSize: 18),
                  ),
                  CustomRadioField(
                      name: 'awarded_loan', optionList: ['Yes', 'No']),
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

                controller.createApplication();

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
