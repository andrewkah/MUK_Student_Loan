import 'package:flutter/material.dart';
import 'package:mak_scholar1/app_screens/home_screen.dart';
import 'package:mak_scholar1/app_screens/listings_screen.dart';
import 'package:mak_scholar1/app_screens/settings_screen.dart';
import 'package:mak_scholar1/app_screens/transactions_screen.dart';

import '../models/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.home, null),
    BottomNav('Listings', Icons.list_alt_rounded, null),
    BottomNav('Transactions', Icons.receipt_long, null),
    BottomNav('Settings', Icons.settings, null),
  ];

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin<MainScreen> {
  int _currentIndex = 0;

  final screens = [
    Center(child: HomeScreen()),
    Center(child: ListingsScreen()),
    Center(child: TransactionsScreen()),
    Center(child: SettingsScreen()),
  ];

  // late BuildContext ctxt;

  // // Change the colors of the nav bar items
  // void onBackPress() {
  //   if (Navigator.of(ctxt).canPop()) {
  //     Navigator.of(ctxt).pop();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // ctxt = context;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 68.0,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          icon: const Icon(
            Icons.notes_rounded,
            size: 38,
          ),
          onPressed: () {},
        ),
        title: const Text("HOME"),
      ),

      body: screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.primaryGreen,
        unselectedItemColor: Colors.grey[500],
        currentIndex: _currentIndex,
        iconSize: 40,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: widget.itemsNav.map((BottomNav data) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.grey[200],
            icon: Icon(data.icon),
            label: data.title,
          );
        }).toList(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
