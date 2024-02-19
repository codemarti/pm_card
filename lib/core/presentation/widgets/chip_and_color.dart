import 'package:flutter/material.dart';

class ChipAndColor extends StatelessWidget {
  const ChipAndColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(
          "https://cdn-icons-png.flaticon.com/512/680/680284.png?w=1380&t=st=1655557504~exp=1655558104~hmac=2669cacd66a61e81138a5495916f77ffe43b60bcadaaef1d8ce92cab23de107d",
          width: 65.0,
        ),
        const Text(
          "Azul",
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w100),
        )
      ],
    );
  }
}
