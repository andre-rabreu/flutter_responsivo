import 'package:flutter/material.dart';

class FavoriteWidgetWeb extends StatefulWidget{
  const FavoriteWidgetWeb({super.key});

  @override
  State<FavoriteWidgetWeb> createState() => _FavoriteWidgetWebState();
}

class _FavoriteWidgetWebState extends State<FavoriteWidgetWeb> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                size: 56,
              ),
            ),
          ),
        ),
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
