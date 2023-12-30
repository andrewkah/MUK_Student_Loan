import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';

class ApplicationScreen1 extends StatefulWidget {
  const ApplicationScreen1({super.key});

  @override
  State<ApplicationScreen1> createState() => _ApplicationScreen1State();
}

class _ApplicationScreen1State extends State<ApplicationScreen1> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool male = false;
  bool female = false;
  bool yes = false;
  bool no = false;

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController surNameController = TextEditingController();

  final TextEditingController otherNamesController = TextEditingController();

  final TextEditingController nationalityController = TextEditingController();

  final TextEditingController dobController = TextEditingController();

  final TextEditingController IDController = TextEditingController();

  final TextEditingController financialCardController = TextEditingController();

  final TextEditingController countryOfController = TextEditingController();

  final TextEditingController collegeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.primaryGreen,
        foregroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 50.0,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          icon: const Icon(
            (Icons.arrow_back_ios_new_rounded),
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "APPLICATION",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
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
                      ),
                      CustomTextField(
                          name: "firstName",
                          controller: firstNameController,
                          fieldLabel: "First Name"),
                      CustomTextField(
                          name: "other_names",
                          controller: otherNamesController,
                          fieldLabel: "Other Names"),
                      Row(
                        children: [
                          Text("Gender", style: TextStyle(fontSize: 18),),
                          Checkbox(
                              value: male,
                              side: MaterialStateBorderSide.resolveWith((states) =>
                                  BorderSide(width: 2.0, color: Colors.primaryGreen)),
                              activeColor: Colors.primaryGreen,
                              onChanged: (bool? value) {
                                setState(() {
                                  male = value!;
                                });
                              }),
                          Text("Male", style: TextStyle(fontSize: 18),),
                          Checkbox(
                              value: female,
                              side: MaterialStateBorderSide.resolveWith((states) =>
                                  BorderSide(width: 2.0, color: Colors.primaryGreen)),
                              activeColor: Colors.primaryGreen,
                              onChanged: (bool? value) {
                                setState(() {
                                  female = value!;
                                });
                              }),
                          Text("Female", style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Disability", style: TextStyle(fontSize: 18),),
                          Checkbox(
                              value: yes,
                              side: MaterialStateBorderSide.resolveWith((states) =>
                                  BorderSide(width: 2.0, color: Colors.primaryGreen)),
                              activeColor: Colors.primaryGreen,
                              onChanged: (bool? value) {
                                setState(() {
                                  yes = value!;
                                });
                              }),
                          Text("Yes", style: TextStyle(fontSize: 18),),
                          Checkbox(
                              value: no,
                              side: MaterialStateBorderSide.resolveWith((states) =>
                                  BorderSide(width: 2.0, color: Colors.primaryGreen)),
                              activeColor: Colors.primaryGreen,
                              onChanged: (bool? value) {
                                setState(() {
                                  no = value!;
                                });
                              }),
                          Text("No", style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Text(
                        "NB. If you are disabled, attach a copy of the persons with disabilities Certificate.",
                        style:
                        TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {  },
                          child: const Text(
                            "ATTACH COPY",
                            style: TextStyle(
                              color: Colors.primaryGreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      CustomTextField(
                          name: "nationality",
                          controller: nationalityController,
                          fieldLabel: "Nationality"),
                      CustomTextField(
                          name: "Dob",
                          controller: dobController,
                          fieldLabel: "Date of Birth"),
                      CustomTextField(name: "NationalID", controller: IDController, fieldLabel: "National Id Number"),
                      CustomNumberField(name: "Financial Card", controller: financialCardController, fieldLabel: "Financial Card Number"),
                      CustomTextField(name: "Country", controller: countryOfController, fieldLabel: "Country of Birth"),
                      SizedBox( height: 10,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () { Navigator.of(context).pushNamed("/Application2"); },
                          child: const Text(
                            "NEXT",
                            style: TextStyle(
                              color: Colors.primaryGreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ]),
            ),

          ),
        ),
      ),
    );
  }
}
