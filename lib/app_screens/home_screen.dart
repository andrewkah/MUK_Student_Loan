import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/application_screen_1.dart';
import 'package:mak_scholar1/app_screens/home_screen_controller.dart';
import 'package:mak_scholar1/app_screens/pay_screen.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';
import 'package:mak_scholar1/models/user_model.dart';

import '../widgets/custom_button.dart';
import '../widgets/row_text_fields.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 147, 71),
        centerTitle: true,
        toolbarHeight: 50.0,
        title: const Text(
          'HOME',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          // You can use any icon from the Icons class
          onPressed: () {
            // Handle navigation icon tap
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications icon tap
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: <Widget>[
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            // Your profile photo goes here
                            radius: 38,
                            backgroundImage: AssetImage('assets/images/user.png'),
                          ),
                          const SizedBox(width: 18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hey,',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "${userData.firstName.toUpperCase()} ${userData.lastName.toUpperCase()}",
                                // Replace with the actual name
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 147, 71),
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     SizedBox(
                      //         height: 60,
                      //         child: Image.asset(
                      //           "assets/images/Mak-Logo.png",
                      //           fit: BoxFit.contain,
                      //         )),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     SizedBox(
                      //         child: RowTextFields(
                      //           titleText: "Hey, ",
                      //           subTitleText: "${userData.firstName} ${userData.lastName}",
                      //           textColor: const Color.fromARGB(255, 0, 147, 71),
                      //           textSize: 20,
                      //         )),
                      //   ],
                      // ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 4,
                        endIndent: 4,
                      ),
                      const SizedBox(height: 15),
                      RowTextFields(
                        titleText: "College:  ",
                        subTitleText: userData.college,
                        textColor: const Color.fromARGB(255, 0, 147, 71),
                        textSize: 20,
                      ),
                      RowTextFields(
                        titleText: "Programme: ",
                        subTitleText: userData.programme.toUpperCase(),
                        textColor: const Color.fromARGB(255, 0, 147, 71),
                        textSize: 20,
                      ),
                      const RowTextFields(
                        titleText: "Current Year: ",
                        subTitleText: "2023/2024",
                        textColor: Color.fromARGB(255, 0, 147, 71),
                        textSize: 20,
                      ),
                      const RowTextFields(
                        titleText: "Current Semester: ",
                        subTitleText: "II",
                        textColor: Color.fromARGB(255, 0, 147, 71),
                        textSize: 20,
                      ),
                      const RowTextFields(
                        titleText: "Account Bal: ",
                        subTitleText: "0.00/=",
                        textColor: Colors.red,
                        textSize: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // const Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       "PRINT EXAM PERMIT",
                      //       style: TextStyle(
                      //           color: Color.fromARGB(255, 0, 147, 71),
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 20),
                      //       textAlign: TextAlign.center,
                      //     ),
                      //   ],
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/cancelled4.png",
                            width: 250,
                            height: 350,
                          ),
                          const Text(
                            "You have no active loans!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      // Card(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(14.0),
                      //     side: const BorderSide(
                      //       color: Color.fromARGB(255, 0, 147, 71),
                      //       width: 2.0,
                      //     ),
                      //   ),
                      //   color: Colors.white,
                      //   child: Column(
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.fromLTRB(10, 30, 10, 15),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.start,
                      //           children: [
                      //             SizedBox(
                      //                 height: 68,
                      //                 child: Image.asset(
                      //                   "assets/images/loan3.png",
                      //                   fit: BoxFit.contain,
                      //                 )),
                      //             const SizedBox(
                      //               width: 8,
                      //             ),
                      //             const SizedBox(
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   RowTextFields(
                      //                     titleText: "Loan Balance: ",
                      //                     subTitleText: "1,977,138/=",
                      //                     titleColor: Colors.black87,
                      //                     textColor: Color.fromARGB(255, 0, 147, 71),
                      //                     textSize: 16,
                      //                   ),
                      //                   SizedBox(
                      //                     height: 8,
                      //                   ),
                      //                   RowTextFields(
                      //                     titleText: "Semester: ",
                      //                     subTitleText: "II",
                      //                     titleColor: Colors.black87,
                      //                     textColor: Color.fromARGB(255, 0, 147, 71),
                      //                     textSize: 16,
                      //                   ),
                      //                   SizedBox(
                      //                     height: 8,
                      //                   ),
                      //                   RowTextFields(
                      //                     titleText: "Academic Year: ",
                      //                     subTitleText: "2022/2023",
                      //                     titleColor: Colors.black87,
                      //                     textColor: Color.fromARGB(255, 0, 147, 71),
                      //                     textSize: 16,
                      //                   ),
                      //                   SizedBox(
                      //                     height: 8,
                      //                   ),
                      //                   RowTextFields(
                      //                     titleText: "Date due: ",
                      //                     subTitleText: "06/08/2023",
                      //                     titleColor: Colors.black87,
                      //                     textColor: Colors.red,
                      //                     textSize: 16,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       Align(
                      //         alignment: Alignment.centerRight,
                      //         child: CustomButton(
                      //           title: "PAY LOAN",
                      //           titleSize: 18,
                      //           paddingHorizontal: 25,
                      //           paddingVertical: 15,
                      //           borderRadius: 18,
                      //           onPressed: () {
                      //             Navigator.of(context).push(MaterialPageRoute(
                      //                 builder: (_) => const PayScreen()));
                      //           },
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      const Spacer(
                        flex: 3,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomButton(
                          title: "APPLY",
                          titleSize: 18,
                          paddingHorizontal: 30,
                          paddingVertical: 15,
                          borderRadius: 30,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => TermsConditionsScreen(
                                      onAgree: () {
                                        Get.off(
                                            () => const ApplicationScreen1());
                                      },
                                    )));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.hasError.toString()));
                } else {
                  return const Center(child: Text("Something went wrong"));
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
