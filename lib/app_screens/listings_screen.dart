import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/models/listings_model.dart';
import 'package:mak_scholar1/models/listings_repository.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/row_text_fields.dart';

class ListingsScreen extends StatelessWidget {
  const ListingsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListingsRepository());
    return Scaffold(
      appBar: const CustomAppBar(
        title: "LISTINGS",
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: FutureBuilder<List>(
          future: controller.allListings(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              if(snapshot.hasData){
                return Column(
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
                        itemCount: snapshot.data!.length,
                        itemBuilder: (c, index) {
                          ListingsModel listing = snapshot.data![index];
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
                              iconColor: const Color.fromARGB(255, 0, 147, 71),
                              collapsedIconColor: const Color.fromARGB(255, 0, 147, 71),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                                child: Text(
                                  listing.name,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 8), // Adjust padding as needed
                                  child: Text(
                                    "About ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8), // Adjust padding as needed
                                  child: Text(
                                    listing.about,
                                    style: const TextStyle(fontSize: 15, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 10, bottom: 8, top: 8),
                                  child: Text(
                                    listing.submission,
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.black
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 10, bottom: 12, top: 8), // Adjust padding as needed
                                  child: RowTextFields(
                                    titleText: "Due:  ",
                                    subTitleText: listing.deadline,
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
                );
              } else if (snapshot.hasError) {
                print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                print(snapshot.error);
                print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
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
    );
  }

}
