import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final String title;
  final VoidCallback? onPressed;

  const CustomAppBar({super.key, required this.leadingIcon, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.primaryGreen,
      foregroundColor: Colors.white,
      centerTitle: true,
      toolbarHeight: 50.0,
      leading: IconButton(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        icon: Icon(
          leadingIcon,
          size: 30,
        ),
        onPressed: onPressed,
        //     () {
        //   Navigator.of(context).pop();
        // },
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}