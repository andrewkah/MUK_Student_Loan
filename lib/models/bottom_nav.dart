import 'package:flutter/material.dart';

class BottomNav{
  String title;
  IconData icon;
  bool badge = false;
  String badgeText = "";

  BottomNav(this.title, this.icon);
  BottomNav.count(this.title, this.icon, this.badge, this.badgeText);
}