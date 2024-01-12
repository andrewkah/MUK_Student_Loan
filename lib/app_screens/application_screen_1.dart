import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/application_screen_2.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';

import '../widgets/custom_button.dart';
import 'Image_upload.dart';

class ApplicationScreen1 extends StatefulWidget {
  const ApplicationScreen1({super.key});

  @override
  State<ApplicationScreen1> createState() => _ApplicationScreen1State();
}

class _ApplicationScreen1State extends State<ApplicationScreen1> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool male = false;
  bool female = false;
  String? _selectedAnswer1 = 'no';

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController surNameController = TextEditingController();

  final TextEditingController otherNamesController = TextEditingController();

  final TextEditingController nationalityController = TextEditingController();

  final TextEditingController dobController = TextEditingController();

  final TextEditingController idController = TextEditingController();

  final TextEditingController financialCardController = TextEditingController();

  final TextEditingController countryOfController = TextEditingController();

  final TextEditingController collegeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        title: "APPLICATION",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
              child: FormBuilder(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "PART I: Applicants details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      CustomTextField(
                        name: "surname",
                        controller: surNameController,
                        fieldLabel: 'Surname',
                        prefixIcon: Icons.person_outline_rounded,
                      ),
                      CustomTextField(
                        name: "firstName",
                        controller: firstNameController,
                        fieldLabel: "First Name",
                        prefixIcon: Icons.person_outline_rounded,
                      ),
                      CustomTextField(
                        name: "other_names",
                        controller: otherNamesController,
                        fieldLabel: "Other Names",
                        prefixIcon: Icons.person_outline_rounded,
                      ),
                      Row(
                        children: [
                          const Text("Gender", style: TextStyle(fontSize: 18),),
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
                              const Text("Male", style: TextStyle(fontSize: 18)),
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
                              const Text("Female", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Disability", style: TextStyle(fontSize: 18),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 'yes2', // Set a group value for radio buttons
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
                                      value: 'no2',
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
                        ],
                      ),
                      CustomTextField(
                        name: "nationality",
                        controller: nationalityController,
                        fieldLabel: "Nationality",
                        prefixIcon: Icons.perm_contact_cal_outlined,
                      ),
                      CustomTextField(
                        name: "Dob",
                        controller: dobController,
                        fieldLabel: "Date of Birth",
                        prefixIcon: Icons.date_range_outlined,
                      ),
                      CustomTextField(name: "NationalID", controller: idController, fieldLabel: "National Id Number", prefixIcon: Icons.onetwothree_outlined,),
                      CustomNumberField(name: "Financial Card", controller: financialCardController, fieldLabel: "Financial Card Number"),
                      CustomTextField(name: "Country", controller: countryOfController, fieldLabel: "Country of Birth", prefixIcon: Icons.map_outlined,),
                      const SizedBox( height: 15,),
                      const Text(
                        "NB. If you are disabled, attach a copy of the persons with disabilities Certificate.",
                        style:
                        TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () async {
                            ImageUpload.uploadImageToStorage();
                          },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "DISABILITIES CERTIFICATE",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 8), // Adjust the spacing between text and icon
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Color.fromARGB(255, 0, 147, 71),
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50,),
                    ]
                ),
              ),
            ),
          ),
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: CustomButton(
            title: "NEXT",
            titleSize: 18,
            paddingHorizontal: 30,
            paddingVertical: 15,
            borderRadius: 30,
            onPressed: () {
              Get.to(() => const ApplicationScreen2());
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
