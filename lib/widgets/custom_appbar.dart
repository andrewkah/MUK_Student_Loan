import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final String title;
  final VoidCallback? onPressed;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingPressed;

  const CustomAppBar({super.key, this.leadingIcon, required this.title, this.onPressed, this.trailingIcon, this.onTrailingPressed,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 0, 147, 71),
      centerTitle: true,
      toolbarHeight: 50.0,
      leading: IconButton(
        // padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        icon: Icon(
          leadingIcon,
        ),
        onPressed: onPressed,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        if (trailingIcon != null)
          Padding(
            padding: const EdgeInsets.only(right: 16.0), // Add right margin
            child: IconButton(
              onPressed: onTrailingPressed,
              icon: Icon(
                trailingIcon,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
