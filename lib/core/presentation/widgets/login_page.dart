import 'dart:html';

import 'package:fitibank_card/core/presentation/screens/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool _isChecked = false;

  String _phoneNumber = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://avatars.githubusercontent.com/u/116573815?v=4",
              height: 200,
            )),

        TextField(
          decoration: InputDecoration(hintText: "Phone number"),
          controller: TextEditingController(text: _phoneNumber),
        ), // <-
        TextField(
          decoration: InputDecoration(hintText: "Password"), // aqui
          controller: TextEditingController(text: _password),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: _isChecked,
                onChanged: (newValue) =>
                    {setState(() => _isChecked = newValue!)},
                checkColor: Color.fromRGBO(255, 255, 255, 1),
                fillColor: MaterialStateProperty.all(
                    const Color.fromRGBO(105, 0, 0, 1))),
            const Text("Mantener sesión activa")
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            child: Text(
              "Presiona",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(105, 0, 0, 1)))),
      ],
    );
  }
}
// 2024  MUSIC  PUT EM ON THE NEWS OR SUM
