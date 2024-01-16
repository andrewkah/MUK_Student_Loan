import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/application_screen_1.dart';
import 'package:mak_scholar1/app_screens/home_screen_controller.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';
import 'package:mak_scholar1/models/user_model.dart';

import '../models/loan_application_model.dart';
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
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   // You can use any icon from the Icons class
        //   onPressed: () {
        //     // Handle navigation icon tap
        //   },
        // ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.notifications),
        //     onPressed: () {
        //       // Handle notifications icon tap
        //     },
        //   ),
        // ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          child: FutureBuilder<List>(
            future: Future.wait([controller.getUserData(), controller.getUserApplicationData()]),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data![0] as UserModel;
                  LoanApplicationModel userApplicationData =snapshot.data![1] as LoanApplicationModel;
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

                      userApplicationData.hasApplied == false ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/cancelled4.png",
                            width: 250,
                            height: 250,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "You have no active loans!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ) : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/deadline.png",
                            width: 250,
                            height: 250,
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            "Your loan application is pending!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(
                        flex: 3,
                      ),
                      userApplicationData.hasApplied == false ? Align(
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
                      ) : Container(),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  print("==============================================================================================");
                  print(snapshot.error);
                  print("===============================================================================================");
                  return const Center(child: Text("Snapshot has error"));
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
