import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mak_scholar1/app_screens/application_screen_3.dart';
import 'package:mak_scholar1/app_screens/map_screen.dart';
import 'package:mak_scholar1/authentication_files/preferences.dart';
import '../widgets/custom_appbar.dart';
import 'package:get/get.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_builder_fields.dart';

class ApplicationScreen2 extends StatefulWidget {
  const ApplicationScreen2({super.key});

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
  final TextEditingController yearOfCompletionController =
      TextEditingController();
  final TextEditingController indexController = TextEditingController();

  String imageUrl = "";

  @override
  void initState() {
    super.initState();
    _setAddress();
  }

  Future<void> _setAddress() async {
    setState(() {
      addressController.text = LocationPreferences.getLocationPreference();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
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
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        name: "address",
                        controller: addressController,
                        fieldLabel: "Residential Address",
                        // prefixIcon: Icons.add_home_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MapScreen()));
                      },
                      icon: const Icon(
                        Icons.location_on_outlined,
                        size: 30,
                        color: Color.fromARGB(255, 0, 147, 71),
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  name: "village",
                  controller: villageController,
                  fieldLabel: 'Village',
                  prefixIcon: Icons.holiday_village_outlined,
                ),
                CustomTextField(
                  name: "province",
                  controller: provinceController,
                  fieldLabel: "Province",
                  prefixIcon: Icons.location_city_outlined,
                ),
                CustomTextField(
                  name: "district",
                  controller: districtController,
                  fieldLabel: "District",
                  prefixIcon: Icons.map_outlined,
                ),
                CustomTextField(
                  name: "postal code",
                  controller: postalCodeController,
                  fieldLabel: "Postal Code",
                  prefixIcon: Icons.markunread_mailbox_outlined,
                ),
                const SizedBox(
                  height: 15,
                ),
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
                  prefixIcon: Icons.school_outlined,
                ),
                CustomTextField(
                  name: "district",
                  controller: schDistrictController,
                  fieldLabel: "District",
                  prefixIcon: Icons.map_outlined,
                ),
                CustomNumberField(
                    name: "year of completion",
                    controller: yearOfCompletionController,
                    fieldLabel: "Year of Completion"),
                CustomTextField(
                  name: "index no",
                  controller: indexController,
                  fieldLabel: "Index Number",
                  prefixIcon: Icons.onetwothree_outlined,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () async {
                      ImagePicker imagePicker = ImagePicker();
                      XFile? file = await imagePicker.pickImage(
                          source: ImageSource.camera);
                      print("${file?.path}");

                      // if (file == null) return;
                      // String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();
                      //
                      // //References
                      // Reference referenceRoot = FirebaseStorage.instance.ref();
                      // Reference referenceDirImages = referenceRoot.child("images");
                      // Reference referenceImageToUpload  = referenceDirImages.child(uniqueFileName);
                      //
                      // try {
                      //   await referenceImageToUpload.putFile(File(file.path));
                      //   imageUrl = await referenceImageToUpload.getDownloadURL();
                      // } catch(error) {
                      //   //handle error
                      // }
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "PASS-SLIP",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 147, 71),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                            width:
                                8), // Adjust the spacing between text and icon
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Color.fromARGB(255, 0, 147, 71),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
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
              _formKey1.currentState!.validate()
                  ? Get.to(() => const ApplicationScreen3())
                  : null;
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
