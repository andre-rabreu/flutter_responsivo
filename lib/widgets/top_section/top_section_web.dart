import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsivo/breakpoints.dart';

class TopSectionWeb extends StatelessWidget {
  const TopSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        AspectRatio(
          aspectRatio: topSectionAspectRatio,
          child: const Image(
            image: AssetImage('assets/banner.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 48),
      ]
    );
  }
}
