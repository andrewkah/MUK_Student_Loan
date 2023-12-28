import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';

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
  COVAB( 'College of Veterinary Medicine, Animal Resources and Biosecurity'),
  LAW( 'School of Law');

  const CollegeLabel(this.label);
  final String label;
}


class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  // form key
  final _formkey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController collegeController = TextEditingController();

  final TextEditingController stdEmailController = TextEditingController();

  final TextEditingController stdNoController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // first name field
    final firstNameField = FormBuilderTextField(name: "firstName", autofocus: false, controller: firstNameController, keyboardType: TextInputType.text,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
      ]),
      decoration: const InputDecoration(
          labelText: "First name",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // last name field
    final lastNameField = FormBuilderTextField(name: 'lastName', autofocus: false, controller: lastNameController, keyboardType: TextInputType.text,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
      ]),
      decoration: const InputDecoration(
          labelText: "Second name",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
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
        labelStyle: TextStyle(fontSize: 20),
        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
      menuMaxHeight: 300,
      items: CollegeLabel.values
              .map<DropdownMenuItem<CollegeLabel>>(
                  (CollegeLabel college) {
                return DropdownMenuItem<CollegeLabel>(
                  value: college,
                  child: Text(college.label)
                );
              }).toList(),
    );

    // student email field
    final stdEmailField = TextFormField( autofocus: false, controller: stdEmailController, keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.email(errorText: "Invalid email-address")
      ]),
      decoration: const InputDecoration(
        labelText: "Student Email",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // student number field
    final stdNoField = TextFormField( autofocus: false, controller: stdNoController, keyboardType: TextInputType.number,
      onSaved: (value) {
        stdNoController.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.numeric(errorText: "Must contain integers only"),
        FormBuilderValidators.minLength(10),
        FormBuilderValidators.maxLength(12),
      ]),
      decoration: const InputDecoration(
          labelText: "Student Number",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // Password field
    final passwordField = TextFormField( autofocus: false, obscureText: true, controller: passwordController,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.minLength(6, errorText: "password length should be 6 or greater"),
      ]),
      decoration: const InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );

    // confirm password field
    final confirmPasswordField = TextFormField( autofocus: false, controller: confirmPasswordController, obscureText: true,
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.minLength(6, errorText: "password length should be 6 or greater"),
        FormBuilderValidators.match(passwordController.text, errorText: "password mismatch!!")
      ]),
      decoration: const InputDecoration(
          labelText: "Confirm Password",
          labelStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );


    // signup Button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text("SIGN UP", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {Navigator.pop(context, true);}, icon: const Icon(Icons.arrow_back_rounded), color: Colors.grey.shade700,),
      ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 20.0),
              child: FormBuilder(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                            child: Image.asset("assets/images/Mak-Logo.png",
                              fit: BoxFit.contain,)
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text("STUDENT FUND USER REGISTRATION", style: TextStyle(
                              color: Colors.primaryGreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black, height: 20, thickness: 2, indent: 3, endIndent: 3,),
                    const SizedBox(height: 22),
                    firstNameField,
                    const SizedBox(height: 20),
                    lastNameField,
                    const SizedBox(height: 20),
                    collegeField,
                    // collegeField,
                    const SizedBox(height: 20),
                    stdEmailField,
                    const SizedBox(height: 20),
                    stdNoField,
                    const SizedBox(height: 20),
                    passwordField,
                    const SizedBox(height: 20),
                    confirmPasswordField,
                    const SizedBox(height: 35),
                    signupButton,
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("By signing up, you agree to out "),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TermsConditionsScreen()));
                            },
                            child: const Text(
                              "T&Cs",
                              style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
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
        )
    );
  }
}
