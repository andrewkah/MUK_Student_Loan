import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/models/loan_application_model.dart';

import '../authentication_files/authentication_repository.dart';


class LoanApplicationRepository extends GetxController {
  static LoanApplicationRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  // Get user email
  final _authRepo = Get.put(Authenticator());
  // fields
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController nationality = TextEditingController();
  final TextEditingController dateOfBirth = TextEditingController();
  final TextEditingController village = TextEditingController();
  final TextEditingController financialCardNumber = TextEditingController();
  final TextEditingController countryOfBirth = TextEditingController();
  final TextEditingController residentialAddress = TextEditingController();
  final TextEditingController province = TextEditingController();
  final TextEditingController district = TextEditingController();
  final TextEditingController postalCode = TextEditingController();
  final TextEditingController secondarySchoolAttended = TextEditingController();
  final TextEditingController secondarySchoolLocation = TextEditingController();
  final TextEditingController yearOfCompletion = TextEditingController();
  final TextEditingController nationalIdNumber = TextEditingController();
  final ValueNotifier<bool> isDisabled = ValueNotifier<bool>(false);
  final TextEditingController otherNames = TextEditingController();
  final TextEditingController indexNumber = TextEditingController();



  //create model that will be up
  LoanApplicationModel loanApplication = LoanApplicationModel(
    firstName: "",
    lastName: "",
    gender: "",
    isDisabled: false,
    dateOfBirth: "",
    nationalIdNumber: "",
    financialCardNumber: "",
    countryOfBirth: "",
    residentialAddress: "",
    village: "",
    province: "",
    district: "",
    postalCode: "",
    secondarySchoolAttended: "",
    secondarySchoolLocation: "",
    yearOfCompletion: "",
    indexNumber: "",
    reference: "",
    otherNames: "",
    nationality: "",
    loanCategory: "",
    appliedBefore: "",
    awardedBefore: "",
    email: "",
    approved: false,
  );

  void updateFromScreenOne(String firstName, String lastName, String otherNames,
      String gender, bool isDisabled, String nationality, String dateOfBirth,
      String nationalIdNumber, String financialCardNumber, String countryOfBirth, String reference){
    final userEmail = _authRepo.firebaseUser.value?.email;
    loanApplication.firstName = firstName;
    loanApplication.lastName = lastName;
    loanApplication.otherNames = otherNames;
    loanApplication.gender = gender;
    loanApplication.isDisabled = isDisabled;
    loanApplication.nationality = nationality;
    loanApplication.dateOfBirth = dateOfBirth;
    loanApplication.nationalIdNumber = nationalIdNumber;
    loanApplication.financialCardNumber = financialCardNumber;
    loanApplication.countryOfBirth = countryOfBirth;
    loanApplication.reference = reference;
    loanApplication.email = userEmail!;
  }

  void updateFromScreenTwo(String residentialAddress, String village, String province,
      String district, String postalCode, String secondarySchoolAttended, String secondarySchoolLocation,
      String yearOfCompletion, String indexNumber){
    loanApplication.residentialAddress = residentialAddress;
    loanApplication.village = village;
    loanApplication.province = province;
    loanApplication.district = district;
    loanApplication.postalCode = postalCode;
    loanApplication.secondarySchoolAttended = secondarySchoolAttended;
    loanApplication.secondarySchoolLocation = secondarySchoolLocation;
    loanApplication.yearOfCompletion = yearOfCompletion;
    loanApplication.indexNumber = indexNumber;
  }

  void updateFromScreenThree(String appliedBefore, String awardedLoan, String loanCategory){
    loanApplication.appliedBefore = appliedBefore;
    loanApplication.awardedBefore = awardedLoan;
    loanApplication.loanCategory = loanCategory;
  }

  Future<void> createApplication() async {
    try {
      await _db.collection("LoanApplications").add(loanApplication.toJson());
      Get.snackbar(
        "Success",
        "Your application was submitted successfully.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green,
      );
    } catch (error) {
      Get.snackbar(
        "Error",
        "Something went wrong. Try again.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
      // Not good for production code.
      // print(error.toString());
    }
  }
  // Retrieve record with a specific email
  Future<LoanApplicationModel> getApplicationDetails(String email) async {
    final snapshot = await _db.collection("LoanApplications").where("Email", isEqualTo: email).get();
    final loanData = snapshot.docs.map((e) => LoanApplicationModel.fromSnapshot(e)).single;
    return loanData;
  }

  //Retrieve all records from the Users collection
  Future<List<LoanApplicationModel>> allApplications(String email) async {
    final snapshot = await _db.collection("LoanApplications").get();
    final loanData = snapshot.docs.map((e) => LoanApplicationModel.fromSnapshot(e)).toList();
    return loanData;
  }

  String generateRandomNumberWithPrefix() {
    Random random = Random();
    int randomNumber = random.nextInt(99999999);
    String result = 'RE${randomNumber.toString().padLeft(8, '0')}';
    return result;
  }

}