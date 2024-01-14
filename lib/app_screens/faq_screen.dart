// faq_screen.dart

import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/row_text_fields.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          leadingIcon:Icons.arrow_back_ios_new_rounded,
          title:  "FAQs",
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        body:Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Frequently Asked Questions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 14,
                  itemBuilder: (_, index) {
                    if (index ==0) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: What is Makerere Student Fund?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Makerere Student Fund is a body Corporate established by an Act of Parliament, No. 2 of 2014, to provide Loans and Scholarships to Ugandan Students to pursue Higher Education at Makerere University, but are unable to support themselves financially. MSF implements the Higher Education Students’ Financing Scheme which includes both the Students’ Loan Scheme and the Students’ Scholarship Scheme. ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: "Applications should be submitted to Makerere University ",
                                    ),
                                    TextSpan(
                                      text: "apply.mak.ac.ug ",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    TextSpan(
                                      text: "and CC the Academic Registrar  on ",
                                    ),
                                    TextSpan(
                                      text: "ar.mak.ac.ug",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 10, bottom: 12, top: 8),
                              // Adjust padding as needed
                              child: RowTextFields(
                                titleText: "Due:  ",
                                subTitleText: "31/01/2024",
                                titleColor: Colors.black87,
                                textColor: Colors.red,
                                textSize: 14,
                              ),
                            ),
                          ],
                        ),
                      );
                    }else if(index == 1) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: Why Makerere Student Fund?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "Makerere Student Fund is a body Corporate established by an Act of Parliament, No. 2 of 2014, to provide Loans and Scholarships to Ugandan Students to pursue Higher Education at Makerere University, but are unable to support themselves financially. MSF implements the Higher Education Students’ Financing Scheme which includes both the Students’ Loan Scheme and the Students’ Scholarship Scheme.\n\n"
                                    "It is intended to address the following objectives: –\n"
                                    "• To increase equitable access to Technical and Higher Education;\n"
                                    "• To support highly qualified Ugandan students who may not afford Higher Education;\n"
                                    "• To ensure regional balance in Higher Education services in Uganda;\n"
                                    "• To support courses critical for national development.\n"
                                    "• To ensure a sustainable revolving loans fund.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                      // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                              // ),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(
                            //       left: 15, right: 10, bottom: 12, top: 8),
                            //   // Adjust padding as needed
                            //   child: RowTextFields(
                            //     titleText: "",
                                // subTitleText: "",
                                // titleColor: Colors.black87,
                                // textColor: Colors.red,
                                // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );

    }
                    else if(index==2){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question:  Who is eligible for the student loans?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "Eligibility to the Student Loan Scheme considers:\n\n"
                                    "• Be a Ugandan Citizen.\n"
                                    "• Be admitted to pursue an accredited undergraduate diploma or degree programme in a listed Higher Education Institution, private chartered university, or public university in Uganda. Accreditation is by the National Council for Higher Education (NCHE).\n"
                                    "• Have a financial need.\n"
                                    "• An applicant must be joining in the first year or Continuing Student. However, the Board currently funds final year students among the continuing students.\n"
                                    "• The Board also takes into consideration regional balance, gender, social-economic needs, and equity.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==3){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: Where do I apply for the Student Loan?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "Application is online through the Makerere University Website: www.mak.ac.ug/\n"
                                    "Applicants will be required to attach all the listed requirements.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==4){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: What does one require to apply for a loan?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "Application for a student loan will require one to upload the following:\n\n"
                                    "• A copy of admission letter from any of the participating HEI\n"
                                    "• A copy of the National ID\n"
                                    "• Copies of academic certificates or result slips and transcripts\n"
                                    "• A copy of a birth certificate\n"
                                    "• A copy of the recent passport photo\n"
                                    "• Proof of payment of the prescribed processing fees\n"
                                    "• A copy of the Financial card (Not mandatory at the point of application)\n"
                                    "• A sketch map of the applicant’s current address/residence\n"
                                    "• A sketch map of the applicant’s home of origin (if different from the current address)\n"
                                    "• Fully filled loan application form submitted online.\n\n"
                                    "Note: Applicants will receive a notification upon successfully submitting the application details through email.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==5){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: : What does the Loan cover?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "The Student Loan Scheme is a cost-sharing initiative. The Loan strictly covers the academic component, i.e., Tuition fees, Functional fees, Research fees, Aids and Appliances for Persons with Disabilities (PWDs). A student loan beneficiary is expected to cater for their welfare expenses (accommodation, feeding, medical care, scholastic materials) and any other expenses required by the student outside what Makerere Student Fund covers.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==6){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: : What level of education does the loan cover?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "Currently, the scheme supports students pursuing selected Undergraduate Diploma and Degree Programmes in Science, Technology, Engineering, and Mathematics (STEM). Persons with Disabilities (PWDs) are eligible to pursue either Sciences or Humanities programmes.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==7){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: Can a student access the Loan money on their personal account?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "The loan amount is remitted directly to the Makerere University Institution on a semester basis upon submission of a Subsequent Loan Application Form (SLAF) by the student. However, funds for aids and appliances applicable to Persons with Disabilities (PWDs) may be deposited directly into the Beneficiary’s account.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==8){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: Can a student who has obtained the loan be disqualified?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "A Student Loan Beneficiary can be disqualified on the following grounds:\n\n"
                                    "• Discovery of document and information falsification.\n"
                                    "• Failure to progress academically.\n"
                                    "• Change of citizenship from being a Ugandan national.\n"
                                    "• Conviction of a crime.\n"
                                    "• Dismissal by the University.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )

                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==9){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question:  Can one get a Loan and Exit the Scheme during the time of study?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "A Beneficiary will be required to request for funding only when they need it. A Student can also exit the Scheme if they acquire an alternative source of funding. ",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==10){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question:  What happens upon death of a Loan beneficiary?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "In this case, Makerere University must be notified immediately on presentation of an authentic death certificate by the family of the Beneficiary or Loanee. The Board shall write off the outstanding loan amount against the Loan Protection Fund.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==11){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: What is the Loan Protection Fund?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "Every Student contributes 1% of the annual gross loan amount as Loan Protection Fee. This indemnifies the borrower against death and permanent incapacitation.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                   else if(index==12){

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 147, 71),
                            width: 1.0,
                          ),
                        ),
                        color: Colors.white,
                        child: ExpansionTile(
                          title: const Text(
                            "Question: What is the loan repayment period?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8, top: 8),
                              // Adjust padding as needed
                              child: Text(
                                "Answer:",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                              child: Text(
                                "The maximum repayment period is twice the study period in addition to the grace period of one year. There is also room to negotiate favorable repayment terms, including early repayments.",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, bottom: 8, top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // style: TextStyle(
                                  // fontSize: 15, color: Colors.black),
                                  // children: [
                                  //   TextSpan(
                                  //     text: "Applications should be submitted to Makerere University ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "apply.mak.ac.ug ",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  //   TextSpan(
                                  //     text: "and CC the Academic Registrar  on ",
                                  //   ),
                                  //   TextSpan(
                                  //     text: "ar.mak.ac.ug",
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ],
                                ),
                                // ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 15, right: 10, bottom: 12, top: 8),
                              //   // Adjust padding as needed
                              //   child: RowTextFields(
                              //     titleText: "",
                              // subTitleText: "",
                              // titleColor: Colors.black87,
                              // textColor: Colors.red,
                              // textSize: 14,
                              // ),
                            ),
                          ],
                        ),
                      );


                    }
                    return null;
                  },
                ),

              ),
            ],
          ),
        )// Add your FAQ content here,
    );
  }
}
