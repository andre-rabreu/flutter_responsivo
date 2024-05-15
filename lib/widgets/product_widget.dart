import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 240,
        maxHeight: 240,
      ),
      child: Container(
        color: Colors.grey,
      ),
    );
  }
}
