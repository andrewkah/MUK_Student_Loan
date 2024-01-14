import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/models/listings_model.dart';

class ListingsRepository extends GetxController {
  static ListingsRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<void> createListing(ListingsModel listing) async {
    try {
      await _db.collection("Listings").add(listing.toJson());
      Get.snackbar(
        "Success",
        "Your Listing has been created",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green,
      );
    } catch (error) {
      Get.snackbar(
        "Error",
        "Something went wrong. Try again.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
      // Not good for production code.
      // print(error.toString());
    }
  }
  //Retrieve all records from the Users collection
  Future<List<ListingsModel>> allListings() async {
    final snapshot = await _db.collection("Listings").get();
    final listingsData = snapshot.docs.map((e) => ListingsModel.fromSnapshot(e)).toList();
    return listingsData;
  }

}