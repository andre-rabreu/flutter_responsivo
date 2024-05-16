import 'package:flutter/material.dart';
import 'package:flutter_responsivo/breakpoints.dart';
import 'package:flutter_responsivo/widgets/header_widget.dart';

class TopSectionWeb extends StatelessWidget {
  const TopSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        fit: StackFit.loose,
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: topSectionAspectRatio,
                child: const Image(
                  image: AssetImage('assets/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 64)
            ]
          ),
          Positioned(
            top: 24,
            left: 36,
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: HeaderWidget(),
              ),
            ),
          )
        ]
      );
    });
  }
}
