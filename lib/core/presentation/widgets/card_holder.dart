import 'package:flutter/material.dart';

class Cardholder extends StatelessWidget {
  const Cardholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              "MARTIN MARTINEZ ARIAS",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ],
    );
  }
}
