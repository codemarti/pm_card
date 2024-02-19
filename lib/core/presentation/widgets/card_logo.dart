import 'package:flutter/material.dart';

class CardLogo extends StatelessWidget {
  const CardLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://logos-download.com/wp-content/uploads/2022/01/BBVA_USA_Logo.png",
          width: 100.0,
          color: Colors.white,
        ),
      ],
    );
  }
}
