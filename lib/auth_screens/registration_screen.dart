import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/auth_screens/login_screen.dart';
import 'package:mak_scholar1/authentication_files/signup_controller.dart';
import 'package:mak_scholar1/models/user_model.dart';
import 'package:mak_scholar1/widgets/custom_form_builder_fields.dart';


// DropdownMenuEntry labels and values for the first dropdown menu.
enum CollegeLabel {
  CEES('College of Education and External Studies'),
  COCIS('College of Computing and Information Sciences'),
  CEDAT('College of Engineering, Art, Design and Technology'),
  CHS('College of Health Sciences'),
  CHUSS('College of Humanities and Social Sciences'),
  CONAS('College of Natural Sciences'),
  CAES('College of Agricultural and Environmental Sciences'),
  COBAMS('College of Business and Management Services'),
  COVAB('College of Veterinary Medicine, Animal Resources and Biosecurity'),
  LAW('School of Law');

  const CollegeLabel(this.label);
  final String label;
}

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  // form key
  final _registerFormKey = GlobalKey<FormBuilderState>();

  // Registration/ SignUp Controller
  final controller = Get.put(SignUpController());


  @override
  Widget build(BuildContext context) {
    // first name field
    final firstNameField = CustomTextField(
        name: "firstName",
        controller: controller.firstName,
        fieldLabel: "First Name",
      prefixIcon: Icons.person_outline_rounded,
    );


    // last name field
    final lastNameField = CustomTextField(
        name: "lastName",
        controller: controller.lastName,
        fieldLabel: "Last Name",
    );

    final programmeField = CustomTextField(
      name: "programme",
      controller: controller.programme,
      fieldLabel: "Programme Code",
    );
    // college field
    final collegeField = FormBuilderDropdown(
      name: "college",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please pick a college"),
      ]),
      decoration: const InputDecoration(
          labelText: "College",
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 71)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 71), width: 3),
          ),
      ),
      menuMaxHeight: 300,
      items: CollegeLabel.values
          .map<DropdownMenuItem<CollegeLabel>>((CollegeLabel college) {
        return DropdownMenuItem<CollegeLabel>(
            value: college, child: Text(college.label));
      }).toList(),
      onChanged: (value) {
        controller.college.text = value.toString().split('.').last;
      },
    );

    // student email field
    final stdEmailField = CustomEmailField(
        name: "studentEmail",
        controller: controller.email,
        fieldLabel: "Student Email");

    // student number field
    final stdNoField = CustomNumberField(
        controller: controller.studentNumber,
        name: "studentNo",
        fieldLabel: "Student Number");


    // Password field
    final passwordField = CustomPasswordField(
        name: "password",
        controller: controller.password,
        fieldLabel: "Password");


    // confirm password field
    final confirmPasswordField = FormBuilderTextField(
      autofocus: false,
      controller: controller.password,
      obscureText: true,
      onSaved: (value) {
        controller.password.text = value!;
      },
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
      ]),
      decoration: const InputDecoration(
          labelText: "Confirm Password",
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 71)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 71), width: 3),
          ),
      ),
      name: 'confirmPassword',
    );

    // signup Button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 0, 147, 71),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        minWidth: MediaQuery.of(context).size.width*0.5,
        onPressed: () {
          if(_registerFormKey.currentState!.validate()){
            // SignUpController.instance.registerUser(controller.email.text.trim(),
            //     controller.password.text.trim());
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => MainScreen()));
            final user = UserModel(firstName: controller.firstName.text.trim(),
                lastName: controller.lastName.text.trim(),
                email: controller.email.text.trim(),
                password: controller.password.text.trim(),
                studentNumber: controller.studentNumber.text.trim(),
                programme: controller.programme.text.trim(),
                college: controller.college.text.trim());
            SignUpController.instance.createUser(user);
          }
        },
        child: const Text(
          "SIGN UP",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 50.0,
        //   leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context, true);
        //     },
        //     icon: const Icon(Icons.arrow_back_ios_new_rounded),
        //     color: Colors.grey.shade600,
        //   ),
        // ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 20.0),
              child: FormBuilder(
                key: _registerFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Mak-Logo.png",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //     height: 100,
                        //     child: Image.asset(
                        //       "assets/images/Mak-Logo.png",
                        //       fit: BoxFit.contain,
                        //     )),
                        // const SizedBox(
                        //   width: 200,
                        //   child: Text(
                        //     "STUDENT FUND USER REGISTRATION",
                        //     style: TextStyle(
                        //         color: Color.fromARGB(255, 0, 147, 71),
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 22),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ),
                        Text("Let's get you on board!",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 147, 71),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Create your  profile to start your Journey.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 147, 71),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // const Divider(
                    //   color: Colors.grey,
                    //   thickness: 2,
                    //   indent: 3,
                    //   endIndent: 3,
                    // ),
                    const SizedBox(height: 22),
                    firstNameField,
                    const SizedBox(height: 10),
                    lastNameField,
                    const SizedBox(height: 10),
                    collegeField,
                    const SizedBox(height: 10),
                    programmeField,
                    const SizedBox(height: 10),
                    stdEmailField,
                    const SizedBox(height: 10),
                    stdNoField,
                    const SizedBox(height: 10),
                    passwordField,
                    const SizedBox(height: 10),
                    confirmPasswordField,
                    const SizedBox(height: 35),
                    signupButton,
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Already have an account?",
                            style: TextStyle(
                                fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => LogInScreen(
                                    // onAgree: () {
                                    //   Navigator.of(context).pop(); // Pops back to login or register
                                    // },
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                  fontWeight: FontWeight.bold,
                                  // decoration: TextDecoration.underline,
                                  decorationColor: Color.fromARGB(255, 0, 147, 71),
                                  fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
