import 'package:flutter/material.dart';
import 'package:flutter_responsivo/breakpoints.dart';

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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                          "Digite alguma busca aqui",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[400],
                          ),
                                            ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                        color: Colors.grey[400],
                      ),
                    ]
                  ),
                ),
              ),
            ]
          ),
        ),
      ]
    );
  }
}
