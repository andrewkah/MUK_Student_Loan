import 'package:flutter/material.dart';
import 'package:mak_scholar1/app_screens/application_screen_2.dart';
import 'package:mak_scholar1/authentication_files/preferences.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:get/get.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String address = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OpenStreetMapSearchAndPick(
          buttonColor: const Color.fromARGB(255, 0, 147, 71),
          buttonText: 'Capture Location',
          buttonWidth: 200,
          locationPinIconColor: const Color.fromARGB(255, 0, 147, 71),
          locationPinTextStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 147, 71)),
          onPicked: (pickedData) {
            LocationPreferences.setLocationPreference(pickedData.addressName);
            Get.to(() => const ApplicationScreen2());
          }),
    );
  }
}

