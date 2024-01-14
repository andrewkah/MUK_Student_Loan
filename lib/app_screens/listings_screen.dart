import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/row_text_fields.dart';

class ListingsScreen extends StatelessWidget {
  const ListingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: const CustomAppBar( title: "LISTINGS",),
//     body: SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 20.0,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const SizedBox(height: 10,),
//             const Text(
//               "Research Grants",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 6),
//             Container(
//               height: 400, // Set a specific height for the Container
//               child: ListView.builder(
//                 itemCount: 1,
//                 itemBuilder: (_, index) {
//                   return Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(14.0),
//                       side: const BorderSide(
//                         color: Color.fromARGB(255, 0, 147, 71),
//                         width: 2.0,
//                       ),
//                     ),
//                     color: Colors.white,
//                     child: const ExpansionTile(
//                       title: Text(
//                         "Rise Seed Innovations Research Grants Call 005/2024",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black87,
//                         ),
//                       ),
//                       children: [
//                         Text("About the grant",
//                           style: TextStyle(fontSize: 16, color: Colors.black, ),
//                         ),
//                         Text("The grant aims at providing support to students interested in undertaking high level/impact innovations relevant to at least one of the research areas in the College. The research topic or theme needs to be part of the trending reserach in the area of focus and hence ability to attract further research funding on completion of the one-year seed period.",
//                         style: TextStyle(fontSize: 16, color: Colors.black)),
//                         RowTextFields(
//                           titleText: "Due:  ",
//                           subTitleText: "31/01/2024",
//                           titleColor: Colors.black87,
//                           textColor: Colors.red,
//                           textSize: 16,
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               "Scholarships",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 6),
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(14.0),
//                 side: const BorderSide(
//                   color: Color.fromARGB(255, 0, 147, 71),
//                   width: 2.0,
//                 ),
//               ),
//               color: Colors.white,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "MasterCard Scholars Foundation Program",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const RowTextFields(
//                               titleText: "Due:  ",
//                               subTitleText: "31/01/2024",
//                               titleColor: Colors.black87,
//                               textColor: Colors.red,
//                               textSize: 16,
//                             ),
//                             TextButton(
//                               onPressed: () {  },
//                               child: const Text(
//                                 "MORE INFO",
//                                 style: TextStyle(
//                                   color: Color.fromARGB(255, 0, 147, 71),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const CustomAppBar(
      title: "LISTINGS",
    ),
    body: Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Research Grants & Scholarships",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (_, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 147, 71),
                      width: 1.0,
                    ),
                  ),
                  color: Colors.white,
                  child: ExpansionTile(
                    title: const Text(
                      "Rise Seed Innovations Research Grants Call 005/2024",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 8), // Adjust padding as needed
                        child: Text(
                          "About the grant",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8), // Adjust padding as needed
                        child: Text(
                          "The grant aims at providing support to students interested in undertaking high level/impact innovations relevant to at least one of the research areas in the College. The research topic or theme needs to be part of the trending research in the area of focus and hence ability to attract further research funding on completion of the one-year seed period.",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Applications should be submitted to RISE through the Director ",
                              ),
                              TextSpan(
                                text: "ngubiri@cit.ac.ug ",
                                style: TextStyle(color: Colors.red),
                              ),
                              TextSpan(
                                text: "and CC the grants officer on ",
                              ),
                              TextSpan(
                                text: "bdora@cit.ac.ug",
                                style: TextStyle( color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 10, bottom: 12, top: 8), // Adjust padding as needed
                        child: RowTextFields(
                          titleText: "Due:  ",
                          subTitleText: "31/01/2024",
                          titleColor: Colors.black87,
                          textColor: Colors.red,
                          textSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );

}
