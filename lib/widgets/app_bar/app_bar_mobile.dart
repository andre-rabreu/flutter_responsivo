import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56,
      backgroundColor: Colors.black,
      title: const Text(
          'Flutter',
          style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      actions: const [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}