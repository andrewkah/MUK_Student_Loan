// This maps the data to json format
import 'package:cloud_firestore/cloud_firestore.dart';

class ListingsModel {
  final String? id;
  final String name;
  final String about;
  final String submission;
  final String deadline;

  const ListingsModel({
    this.id,
    required this.name,
    required this.about,
    required this.submission,
    required this.deadline,
  });
  toJson(){
    return {
      "Name": name,
      "About": about,
      "HowToSubmit": submission,
      "Deadline": deadline,
    };
  }

  factory ListingsModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return ListingsModel(
        id: document.id,
        name: data["Name"],
        about: data["About"],
        submission: data["HowToSubmit"],
        deadline: data["Deadline"]);
  }
}