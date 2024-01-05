// import 'package:flutter/material.dart';
// import 'package:mak_scholar1/app_screens/application_screen_2.dart';
// import 'package:mak_scholar1/authentication_files/preferences.dart';
// import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
// import 'package:get/get.dart';
//
// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});
//
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   String address = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: OpenStreetMapSearchAndPick(
//           buttonColor: const Color.fromARGB(255, 0, 147, 71),
//           buttonText: 'Capture Location',
//           buttonWidth: 200,
//           locationPinIconColor: const Color.fromARGB(255, 0, 147, 71),
//           locationPinTextStyle: const TextStyle(
//               fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 147, 71)),
//           // baseUri: "https://maps.google.com/",
//           onPicked: (pickedData) {
//             LocationPreferences.setLocationPreference(pickedData.addressName);
//             Get.to(() => const ApplicationScreen2());
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import '../authentication_files/preferences.dart';
import 'application_screen_2.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  final Set<Marker> _markers = {};
  LatLng? _currentLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            initialCameraPosition: const CameraPosition(target: LatLng(0.3610943568233032, 32.62153498828411), zoom: 10.0),
            markers: _markers,
              onCameraMove: (CameraPosition newPosition) {
                _updateMarkerPosition(newPosition.target);
              }
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Center(
              child: SizedBox(
                width: 200,
                height: 50,// Set the desired width here
                child: ElevatedButton(
                  onPressed: () async {
                    final currentLocation = _currentLocation;
                    if (_currentLocation != null) {
                      String address = await getAddressFromCoordinates(currentLocation!.latitude, currentLocation.longitude);
                      LocationPreferences.setLocationPreference(address);
                      Get.to(() => const ApplicationScreen2());

                      // For error checking
                      print('Address: $address');
                      print('Current Marker Location: $_currentLocation');
                    } else {
                      print('No marker selected');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 0, 147, 71), // Change text color
                  ),
                  child: const Text('Capture Location',
                      style: TextStyle(fontSize: 18)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateMarkerPosition(LatLng newPosition) {
    setState(() {
      _markers.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId('currentMarker'),
          position: newPosition,
          draggable: true,
          onDragEnd: (LatLng newLocation) {
            _currentLocation = newLocation;
          },
        ),
      );
      _currentLocation = newPosition;
    });
  }

  Future<String> getAddressFromCoordinates(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        String completeAddress =
            '${placemark.street}, ${placemark.locality}, ${placemark.administrativeArea}, ${placemark.country}';
        return completeAddress;
      } else {
        return 'Address not found';
      }
    } catch (e) {
      print('Error retrieving address: $e');
      return 'Error retrieving address';
    }
  }
}

