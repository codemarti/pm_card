import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "0000 0000 0000 0000",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
