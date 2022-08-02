import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5,
      color: const Color(0xFF393E46),
      child: SizedBox(
        height: 70,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 35,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              )),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 35,
              )),
        ]),
      ),
    );
  }
}
