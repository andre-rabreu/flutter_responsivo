import 'package:flutter/material.dart';

class FavoriteWidgetMobile extends StatefulWidget{
  const FavoriteWidgetMobile({super.key});

  @override
  State<FavoriteWidgetMobile> createState() => _FavoriteWidgetMobileState();
}

class _FavoriteWidgetMobileState extends State<FavoriteWidgetMobile> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Icon(
                  Icons.star,
                  color: isFavorite ? Colors.yellow : Colors.white,
                  size: 48,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const FavoriteWidgetText()
        ]
    );
  }
}

class FavoriteWidgetText extends StatelessWidget {
  const FavoriteWidgetText ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Text(
            "+45.000 alunos",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          Text(
            "Didática garantida",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w100,
              fontSize: 16,
            ),
          )
        ]
    );
  }
}
