import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mak_scholar1/app_screens/map_screen.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_form_builder_fields.dart';

class ApplicationScreen2 extends StatefulWidget {
  ApplicationScreen2({super.key});

  @override
  State<ApplicationScreen2> createState() => _ApplicationScreen2State();
}

class _ApplicationScreen2State extends State<ApplicationScreen2> {
  final _formKey1 = GlobalKey<FormBuilderState>();

  final TextEditingController villageController = TextEditingController();

  final TextEditingController provinceController = TextEditingController();

  final TextEditingController districtController = TextEditingController();

  final TextEditingController postalCodeController = TextEditingController();

  final TextEditingController addressController = TextEditingController();

  final TextEditingController lastSchoolController = TextEditingController();

  final TextEditingController schDistrictController = TextEditingController();

  final TextEditingController yearCompletController = TextEditingController();

  final TextEditingController indexController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_ios_new_rounded, title: "APPLICATION", onPressed: (){ Navigator.of(context).pop(true); },),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
            child: FormBuilder(
                key: _formKey1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PART II: Location",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      name: "village",
                      controller: villageController,
                      fieldLabel: 'Village',
                    ),
                    CustomTextField(
                        name: "province",
                        controller: provinceController,
                        fieldLabel: "Province"),
                    CustomTextField(
                        name: "district",
                        controller: districtController,
                        fieldLabel: "District"),
                    CustomTextField(
                        name: "postal code",
                        controller: postalCodeController,
                        fieldLabel: "Postal Code"),
                   Row(
                     children: [
                       SizedBox(
                         width: 300,
                         child: CustomTextField(
                             name: "address",
                             controller: addressController,
                             fieldLabel: "Residential Address"),
                       ),
                       IconButton(onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => MapScreen()));
                       }, icon: Icon(Icons.location_on_outlined, size: 30, color: Colors.primaryGreen,)),
                     ],
                   ),
                    SizedBox( height: 15,),
                    const Text(
                      "PART III: Secondary School Information",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      name: "last school",
                      controller: lastSchoolController,
                      fieldLabel: 'Name of last school attended',
                    ),
                    CustomTextField(
                        name: "district",
                        controller: schDistrictController,
                        fieldLabel: "District"),
                    CustomNumberField(
                        name: "year of completion",
                        controller: yearCompletController,
                        fieldLabel: "Year of Completion"),
                    CustomTextField(
                        name: "index no",
                        controller: indexController,
                        fieldLabel: "Index Number"),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {  },
                        child: const Text(
                          "ATTACH PASS-SLIP",
                          style: TextStyle(
                            color: Colors.primaryGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox( height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () { Navigator.of(context).pushNamed("/Application3"); },
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
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}