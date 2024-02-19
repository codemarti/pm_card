import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      padding: const EdgeInsets.all(10.0),
      child: const Text("Hola mundo"),
    );
  }
}
