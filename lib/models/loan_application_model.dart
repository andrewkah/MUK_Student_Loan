// This maps the data to json format
import 'package:cloud_firestore/cloud_firestore.dart';

class LoanApplicationModel {
  String? id;
  String firstName;
  String lastName;
  String otherNames;
  String gender;
  bool isDisabled;
  String dateOfBirth;
  String nationalIdNumber;
  String nationality;
  String financialCardNumber;
  String countryOfBirth;
  String residentialAddress;
  String village;
  String province;
  String district;
  String postalCode;
  String secondarySchoolAttended;
  String secondarySchoolLocation;
  String yearOfCompletion;
  String indexNumber;
  String reference;
  String awardedBefore;
  String appliedBefore;
  String loanCategory;
  String email;
  bool approved;
  bool hasApplied;


  LoanApplicationModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.otherNames,
    required this.gender,
    required this.isDisabled,
    required this.dateOfBirth,
    required this.nationalIdNumber,
    required this.nationality,
    required this.financialCardNumber,
    required this.countryOfBirth,
    required this.residentialAddress,
    required this.village,
    required this.loanCategory,
    required this.appliedBefore,
    required this.awardedBefore,
    required this.province,
    required this.district,
    required this.postalCode,
    required this.secondarySchoolAttended,
    required this.secondarySchoolLocation,
    required this.yearOfCompletion,
    required this.indexNumber,
    required this.reference,
    required this.email,
    required this.approved,
    required this.hasApplied,
  });

  toJson(){
    return {
      "LoanReference": reference,
      "FirstName": firstName,
      "LastName": lastName,
      "OtherNames": otherNames,
      "Gender": gender,
      "Disabled": isDisabled,
      "DateOfBirth": dateOfBirth,
      "NationalIdNumber": nationalIdNumber,
      "FinancialCardNumber": financialCardNumber,
      "CountryOfBirth" : countryOfBirth,
      "ResidentialAddress": residentialAddress,
      "Village": village,
      "Province": province,
      "District": district,
      "PostalCode": postalCode,
      "SecondarySchool": secondarySchoolAttended,
      "SecondarySchoolLocation": secondarySchoolLocation,
      "YearOfCompletion": yearOfCompletion,
      "IndexNumber": indexNumber,
      "Nationality": nationality,
      "LoanCategory": loanCategory,
      "AwardedBefore": awardedBefore,
      "AppliedBefore": appliedBefore,
      "Email": email,
      "Approved": approved,
      "HasApplied": hasApplied,
    };
  }

  factory LoanApplicationModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return LoanApplicationModel(
        id: document.id,
        reference: data["LoanReference"],
        firstName: data["FirstName"],
        lastName: data["LastName"],
        otherNames: data["OtherNames"],
        gender: data["Gender"],
        isDisabled: data["Disabled"],
        dateOfBirth: data["DateOfBirth"],
        nationalIdNumber: data["NationalIdNumber"],
        financialCardNumber: data["FinancialCardNumber"],
        countryOfBirth: data["CountryOfBirth"],
        residentialAddress: data["ResidentialAddress"],
        village: data["Village"],
        province: data["Province"],
        nationality: data["Nationality"],
        district: data["District"],
        postalCode: data["PostalCode"],
        secondarySchoolAttended: data["SecondarySchool"],
        secondarySchoolLocation: data["SecondarySchoolLocation"],
        yearOfCompletion: data["YearOfCompletion"],
        indexNumber: data["IndexNumber"],
        appliedBefore: data["AppliedBefore"],
        awardedBefore: data["AwardedBefore"],
        loanCategory: data["LoanCategory"],
        email: data["Email"],
        approved: data["Approved"],
        hasApplied: data["HasApplied"]
    );
  }
}