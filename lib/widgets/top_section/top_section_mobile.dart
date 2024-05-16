import 'package:flutter/material.dart';
import 'package:flutter_responsivo/breakpoints.dart';
import 'package:flutter_responsivo/widgets/header_widget.dart';

class TopSectionMobile extends StatelessWidget {
  const TopSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: topSectionAspectRatio,
          child: const Image(
            image: AssetImage('assets/banner.jpg'),
            // height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: HeaderWidget(),
        )
      ]
    );
  }
}
