import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Aprenda Flutter no seu tempo",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          "Bora aprender Flutter! Cursos por apenas R\$22,90. Qualidade garantida.",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child:
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Digite alguma busca aqui",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                    )
                  )
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
                color: Colors.grey[400],
              ),
            ]),
          ),
        ),
      ]
    );
  }
}
