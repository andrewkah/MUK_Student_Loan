import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String fieldLabel;
  const CustomTextField(
      {super.key,
      required this.name,
      required this.controller,
      required this.fieldLabel});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      autofocus: false,
      controller: controller,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
      ]),
      decoration: InputDecoration(
          labelText: fieldLabel,
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade500),
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 3, 112, 53)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 3, 112, 53), width: 3),
          )),
    );
  }
}

class CustomPasswordField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String fieldLabel;

  const CustomPasswordField(
      {super.key,
      required this.name,
      required this.controller,
      required this.fieldLabel});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
        name: name,
      autofocus: false,
      obscureText: true,
      controller: controller,
      onSaved: (value) {
        controller.text = value!;
      },
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
      ]),
      decoration: InputDecoration(
          labelText: fieldLabel,
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade500),
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 3, 112, 53)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 3, 112, 53), width: 3),
          ),
          prefixIcon: const Icon(Icons.password_outlined),
      ),
    );
  }
}

class CustomEmailField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String fieldLabel;

  const CustomEmailField(
      {super.key,
      required this.name,
      required this.controller,
      required this.fieldLabel});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      autofocus: false,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.email(errorText: "Invalid email-address")
      ]),
      decoration: InputDecoration(
          labelText: fieldLabel,
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade500),
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 3, 112, 53)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 3, 112, 53), width: 3),
          ),
          prefixIcon: const Icon(Icons.email_outlined),
      ),
    );
  }
}

class CustomNumberField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String fieldLabel;

  const CustomNumberField(
      {super.key,
      required this.controller,
      required this.name,
      required this.fieldLabel});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      autofocus: false,
      controller: controller,
      onSaved: (value) {
        controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: "Please fill out this field"),
        FormBuilderValidators.numeric(errorText: "Must contain integers only"),
        FormBuilderValidators.minLength(3, errorText: "At least 3 numbers"),
        FormBuilderValidators.maxLength(12),
      ]),
      decoration: InputDecoration(
          labelText: fieldLabel,
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade500),
          contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 71)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 71), width: 3),
          )),
    );
  }
}
