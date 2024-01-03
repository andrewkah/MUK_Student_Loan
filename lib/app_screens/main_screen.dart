// import 'package:flutter/material.dart';
// import 'package:mak_scholar1/app_screens/home_screen.dart';
// import 'package:mak_scholar1/app_screens/listings_screen.dart';
// import 'package:mak_scholar1/app_screens/settings_screen.dart';
// import 'package:mak_scholar1/app_screens/transactions_screen.dart';
//
// import '../models/bottom_nav.dart';
//
// class MainScreen extends StatefulWidget {
//   final List<BottomNav> itemsNav = <BottomNav>[
//     BottomNav('HOME', Icons.home),
//     BottomNav('LISTINGS', Icons.list_alt_rounded),
//     BottomNav('TRANSACTIONS', Icons.receipt_long),
//     BottomNav('SETTINGS', Icons.settings),
//   ];
//
//   final String? appBarTitle;
//
//   MainScreen({super.key, this.appBarTitle});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen>
//     with SingleTickerProviderStateMixin<MainScreen> {
//   int _currentIndex = 0;
//   final PageStorageBucket bucket = PageStorageBucket();
//
//   final screens = [
//     HomeScreen(),
//     ListingsScreen(),
//     TransactionsScreen(),
//     SettingsScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       WillPopScope(
//         onWillPop: () async {
//           if (_currentIndex != 0) {
//             setState(() {
//               _currentIndex = 0;
//             });
//           }
//           return false;
//         },
//         child:
//         Scaffold(
//           body: IndexedStack(
//             index: _currentIndex,
//             children: screens,
//           ),
//
//           bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: Colors.grey[300],
//             type: BottomNavigationBarType.fixed,
//             showSelectedLabels: true,
//             showUnselectedLabels: true,
//             selectedItemColor: const Color.fromARGB(255, 0, 147, 71),
//             unselectedItemColor: Colors.grey[700],
//             currentIndex: _currentIndex,
//             iconSize: 40,
//             onTap: (int index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             items: widget.itemsNav.map((BottomNav data) {
//               return BottomNavigationBarItem(
//                 icon: Icon(data.icon),
//                 label: data.title,
//               );
//             }).toList(),
//           ),
//           backgroundColor: Colors.white,
//         ),
//     );
//
//   }
// }
