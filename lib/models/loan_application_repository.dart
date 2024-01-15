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
    firstName: "John",
    lastName: "Die",
    gender: "Male",
    isDisabled: false,
    dateOfBirth: "01/01/1990",
    nationalIdNumber: "CM040",
    financialCardNumber: "CM040",
    countryOfBirth: "Uganda",
    residentialAddress: "Kampala",
    village: "Kampala",
    province: "Kampala",
    district: "Kampala",
    postalCode: "1000",
    secondarySchoolAttended: "City Parents",
    secondarySchoolLocation: "Kampala",
    yearOfCompletion: "2020",
    indexNumber: "21010",
    reference: "RE199388",
    otherNames: "Other",
    nationality: "Ugandan",
    loanCategory: "%0%",
    appliedBefore: "No",
    awardedBefore: "No",
    email: "email@gmail.com",
    approved: false,
    hasApplied: false,
  );

  void updateFromScreenOne(String firstName, String lastName, String otherNames,
      String gender, bool isDisabled, String nationality, String dateOfBirth,
      String nationalIdNumber, String financialCardNumber, String countryOfBirth, String reference){
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
    final email = _authRepo.firebaseUser.value?.email;
    loanApplication.appliedBefore = appliedBefore;
    loanApplication.awardedBefore = awardedLoan;
    loanApplication.loanCategory = loanCategory;
    loanApplication.hasApplied = true;
    loanApplication.email = email!;
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

  void setEmail(String userEmail){
    loanApplication.email = userEmail;
  }
  Future<void> createApplicationOnSignUp() async {
    try {
      await _db.collection("LoanApplications").add(loanApplication.toJson());
    } catch (error) {
      print(error.toString());
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

  Future<void> updateLoanApplication(String email) async {
    try {
      final snapshot = await _db.collection("LoanApplications").where("Email", isEqualTo: email).get();
      if (snapshot.docs.isNotEmpty) {
        DocumentSnapshot loanDoc = snapshot.docs.first;
        await loanDoc.reference.update(loanApplication.toJson());
        Get.snackbar(
          "Success",
          "Your loan application was created successfully.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green,
        );
      }
    } catch (error) {
      print(error.toString());
    }

  }

  String generateRandomNumberWithPrefix() {
    Random random = Random();
    int randomNumber = random.nextInt(99999999);
    String result = 'RE${randomNumber.toString().padLeft(8, '0')}';
    return result;
  }

}