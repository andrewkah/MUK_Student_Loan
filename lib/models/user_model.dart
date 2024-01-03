// This maps the data to json format
class UserModel {
    final String? id;
    final String firstName;
    final String lastName;
    final String email;
    final String password;
    final String studentNumber;
    final String college;


    const UserModel({
      this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.studentNumber,
      required this.college,
  });
    toJson(){
      return {
        "FirstName": firstName,
        "LastName": lastName,
        "Email": email,
        "Password": password,
        "StudentNumber": studentNumber,
        "College": college,
      };
    }

}