import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/row_text_fields.dart';

class ListingsScreen extends StatelessWidget {
  const ListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints(maxWidth: double.infinity),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Research Grants",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: const BorderSide(
                    color: Colors.primaryGreen,
                    width: 2.0,
                  ),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "RISE Seed Innovations Grant",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Call 004/2023",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    size: 40,
                                    color: Colors.primaryGreen,
                                  )),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RowTextFields(
                                titleText: "Due:  ",
                                subTitleText: "10/01/2024",
                                textColor: Colors.red,
                                textSize: 18,
                              ),
                              // SizedBox(width: 70,),
                              Text(
                                "APPLY",
                                style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "Scholarships",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: const BorderSide(
                    color: Colors.primaryGreen,
                    width: 2.0,
                  ),
                ),
                color: Colors.white,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MasterCard Scholars Foundation",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Program",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RowTextFields(
                                titleText: "Due:  ",
                                subTitleText: "31/01/2024",
                                textColor: Colors.red,
                                textSize: 18,
                              ),
                              Text(
                                "MORE INFO",
                                style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: const BorderSide(
                    color: Colors.primaryGreen,
                    width: 2.0,
                  ),
                ),
                color: Colors.white,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Makerere University Female",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Scholarship Foundation",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RowTextFields(
                                titleText: "Due:  ",
                                subTitleText: "05/01/2024",
                                textColor: Colors.red,
                                textSize: 18,
                              ),
                              Text(
                                "MORE INFO",
                                style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: const BorderSide(
                    color: Colors.primaryGreen,
                    width: 2.0,
                  ),
                ),
                color: Colors.white,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Madhvani Scholars Program",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RowTextFields(
                                titleText: "Due:  ",
                                subTitleText: "05/01/2024",
                                textColor: Colors.red,
                                textSize: 18,
                              ),
                              Text(
                                "MORE INFO",
                                style: TextStyle(
                                  color: Colors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
