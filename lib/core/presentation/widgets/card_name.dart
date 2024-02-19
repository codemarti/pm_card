import 'package:flutter/material.dart';

class CardName extends StatelessWidget {
  const CardName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "F I T I",
          style: TextStyle(
              fontFamily: "src code",
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              color: Colors.white),
        )
      ],
    );
  }
}
