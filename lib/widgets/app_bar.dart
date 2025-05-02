import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  required String title,
  VoidCallback? onSearchPressed,
  VoidCallback? onLogoutPressed,
}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
    actions: [
      IconButton(
        icon: const Icon(Icons.logout),
        onPressed: onLogoutPressed,
      ),
    ],
    leading: IconButton(
      icon: const Icon(Icons.search),
      onPressed: onSearchPressed,
    ),
  );
}