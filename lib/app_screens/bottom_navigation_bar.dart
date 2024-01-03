import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mak_scholar1/app_screens/home_screen.dart';
import 'package:mak_scholar1/app_screens/listings_screen.dart';
import 'package:mak_scholar1/app_screens/settings_screen.dart';
import 'package:mak_scholar1/app_screens/transactions_screen.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return WillPopScope(
      onWillPop: () async {
        if (controller.selectedIndex.value != 0) {
          controller.selectedIndex.value = 0;
          return false;
        }
        return true;
      },
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.grey[200],
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: const Color.fromARGB(255, 0, 147, 71),
            unselectedItemColor: Colors.grey[700],
            iconSize: 40,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_rounded), label: "LISTINGS"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_long), label: "TRANSACTIONS"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "SETTINGS"),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ListingsScreen(),
    const TransactionsScreen(),
    const SettingsScreen(),
  ];
}
