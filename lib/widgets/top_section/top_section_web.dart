import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopSectionWeb extends StatelessWidget {
  const TopSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
        AspectRatio(
          aspectRatio: 3,
          child: Image(
            image: AssetImage('assets/banner.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 48),
      ]
    );
  }
}
