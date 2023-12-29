import 'package:flutter/material.dart';
import 'package:mak_scholar1/app_screens/home_screen.dart';
import 'package:mak_scholar1/app_screens/listings_screen.dart';
import 'package:mak_scholar1/app_screens/settings_screen.dart';
import 'package:mak_scholar1/app_screens/transactions_screen.dart';

import '../models/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('HOME', Icons.home),
    BottomNav('LISTINGS', Icons.list_alt_rounded),
    BottomNav('TRANSACTIONS', Icons.receipt_long),
    BottomNav('SETTINGS', Icons.settings),
  ];

  final String? appBarTitle;

  MainScreen({super.key, this.appBarTitle});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin<MainScreen> {
  int _currentIndex = 0;
  late String _appBarTitle;
  late Icon _backIcon;

  @override
  void initState() {
    super.initState();
    _appBarTitle = 'HOME';
    _backIcon = const Icon(
        Icons.notes_rounded,
        size: 35,
      );
  }

  final screens = [
    Center(child: HomeScreen()),
    Center(child: ListingsScreen()),
    Center(child: TransactionsScreen()),
    Center(child: SettingsScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    // ctxt = context;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.primaryGreen,
        centerTitle: true,
        toolbarHeight: 50.0,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          icon: _backIcon,
          onPressed: () {},
        ),
        title: Text(_appBarTitle, style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.primaryGreen,
        unselectedItemColor: Colors.grey[700],
        currentIndex: _currentIndex,
        iconSize: 40,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _appBarTitle = widget.itemsNav[index].title; // Set app bar title directly
            _backIcon = (index == 0 ? const Icon(Icons.notes_rounded, size: 38) : const Icon(Icons.arrow_back_ios_new_rounded, size: 32));
          });
        },
        items: widget.itemsNav.map((BottomNav data) {
          return BottomNavigationBarItem(
            icon: Icon(data.icon),
            label: data.title,
          );
        }).toList(),
      ),
      backgroundColor: Colors.white,
    );
  }
}
