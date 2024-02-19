import 'package:flutter/material.dart';

class CardDate extends StatelessWidget {
  const CardDate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "MIEMBRO DESDE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 10.0),
                  ),
                ),
                Text(
                  "2000",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 25.0),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          width: 50.0,
        ),
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 35,
                  child: Text(
                    "VENCE FIN DE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 10.0),
                  ),
                ),
                Text(
                  "12/12",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 25.0),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
