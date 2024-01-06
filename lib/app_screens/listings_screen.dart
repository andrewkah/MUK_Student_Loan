import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/row_text_fields.dart';

class ListingsScreen extends StatelessWidget {
  const ListingsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const CustomAppBar( title: "LISTINGS",),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10,),
            const Text(
              "Research Grants",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 147, 71),
                  width: 2.0,
                ),
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 250),
                              child: const Text(
                                "RISE Seed Innovations Grant Call 004/2023",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ),


                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                  color: Color.fromARGB(255, 0, 147, 71),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const RowTextFields(
                              titleText: "Due:  ",
                              subTitleText: "10/01/2024",
                              titleColor: Colors.black87,
                              textColor: Colors.red,
                              textSize: 16,
                            ),
                            TextButton(
                              onPressed: () {  },
                              child: const Text(
                                "APPLY",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
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
            const SizedBox(height: 10),
            const Text(
              "Scholarships",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 147, 71),
                  width: 2.0,
                ),
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "MasterCard Scholars Foundation Program",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const RowTextFields(
                              titleText: "Due:  ",
                              subTitleText: "31/01/2024",
                              titleColor: Colors.black87,
                              textColor: Colors.red,
                              textSize: 16,
                            ),
                            TextButton(
                              onPressed: () {  },
                              child: const Text(
                                "MORE INFO",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 147, 71),
                  width: 2.0,
                ),
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Makerere University Female Scholarship Foundation",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const RowTextFields(
                              titleText: "Due:  ",
                              subTitleText: "05/01/2024",
                              titleColor: Colors.black87,
                              textColor: Colors.red,
                              textSize: 16,
                            ),
                            TextButton(
                              onPressed: () {  },
                              child: const Text(
                                "MORE INFO",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 147, 71),
                  width: 2.0,
                ),
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Madhvani Scholars Program",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const RowTextFields(
                              titleText: "Due:  ",
                              subTitleText: "05/01/2024",
                              titleColor: Colors.black87,
                              textColor: Colors.red,
                              textSize: 16,
                            ),
                            TextButton(
                              onPressed: () {  },
                              child: const Text(
                                "MORE INFO",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
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
