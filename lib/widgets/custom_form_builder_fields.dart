
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomTextField extends StatelessWidget {

  final String name;
  final TextEditingController controller;
  final String fieldLabel;
  const CustomTextField({super.key, required this.name, required this.controller, required this.fieldLabel});

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
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )
      ),
    );
  }

}

class CustomNumberField extends StatelessWidget {

  final String name;
  final TextEditingController controller;
  final String fieldLabel;

  const CustomNumberField({super.key, required this.controller, required this.name, required this.fieldLabel});

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
          contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.primaryGreen, width: 3),
          )),
    );
  }

}

