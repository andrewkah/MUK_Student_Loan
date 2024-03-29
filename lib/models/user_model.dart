// This maps the data to json format
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
    final String? id;
    final String firstName;
    final String lastName;
    final String email;
    final String password;
    final String studentNumber;
    final String college;
    final String programme;


    const UserModel({
      this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.studentNumber,
      required this.college,
      required this.programme,
  });
    toJson(){
      return {
        "FirstName": firstName,
        "LastName": lastName,
        "Email": email,
        "Password": password,
        "StudentNumber": studentNumber,
        "College": college,
        "Programme": programme,
      };
    }

    factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
      final data = document.data()!;
      return UserModel(
          id: document.id,
          firstName: data["FirstName"],
          lastName: data["LastName"],
          email: data["Email"],
          password: data["Password"],
          studentNumber: data["StudentNumber"],
          programme: data["Programme"],
          college: data["College"]);
    }
}