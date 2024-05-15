import 'package:flutter/material.dart';

class AppBarWeb extends StatelessWidget {
  const AppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.black,
      title: Row(
        children: [
          const Text('Flutter',
            style: TextStyle(color: Colors.white)
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 48,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text('Pesquise alguma coisa aqui',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Aprender',
              style: TextStyle(color: Colors.lightBlue),
            )
          ),
          Row(
            children: [
              TextButton(onPressed: () {},
                child: const Text('Flutter',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              )
            ],
          ),
          TextButton(onPressed: () {},
              child: const Text('Fazer login',
                style: TextStyle(color: Colors.lightBlue),
              )
          ),
          TextButton(onPressed: () {},
              child: const Text('Cadastre-se',
                style: TextStyle(color: Colors.lightBlue),
              )
          )
        ]
      )
    );
  }
}