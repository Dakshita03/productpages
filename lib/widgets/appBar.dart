import 'package:flutter/material.dart';

class AppBarTop extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTop({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/logo.png', height: 50, width: 100),
      elevation: 10,
      centerTitle: false,
      backgroundColor: const Color(0xFF393E46),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 35)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications, size: 35)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu, size: 35)),
      ],
    );
  }
}
