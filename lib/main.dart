import 'package:fitibank_card/core/data/models/cardModel.dart';
import 'package:fitibank_card/core/data/models/userModel.dart';
import 'package:fitibank_card/core/domain/entities/user.dart';
import 'package:fitibank_card/core/domain/entities/card.dart';
import 'package:fitibank_card/core/presentation/widgets/card_date.dart';
import 'package:fitibank_card/core/presentation/widgets/card_holder.dart';
import 'package:fitibank_card/core/presentation/widgets/card_logo.dart';
import 'package:fitibank_card/core/presentation/widgets/card_name.dart';
import 'package:fitibank_card/core/presentation/widgets/card_number.dart';
import 'package:fitibank_card/core/presentation/widgets/chip_and_color.dart';
import 'package:fitibank_card/core/presentation/widgets/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(title),
        ),
        body: Center(child: cardBody()));
  }
}

Widget cardBody() {
  final User user = User(
      name: "Martin",
      email: "h@gmail.com",
      password: "0000",
      telephone: "0000");
  final CardEntity card = CardEntity(
      cardDate: "12:12",
      cardNumber: "0000 0000 0000 0000",
      cardOwner: "MARITN MARTINEZ ARIAS",
      logo: "VISA");

  final CardModel cardModel = CardModel.fromEntity(card);

  final UserModel userModel = UserModel.fromEntity(user);
  return Container(
    height: 500,
    width: 500,
    padding: const EdgeInsets.all(13.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
              color: Colors.red,
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 0))
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        LoginPage() // comente todo del main y puse login page aqui

        // const CardLogo(),
        // Text(userModel.name, style: const TextStyle(color: Colors.white)),
        // Text(
        //   cardModel.cardOwner,
        //   style: const TextStyle(color: Colors.white),
        // ),
        // Text(
        //   cardModel.cardDate,
        //   style: const TextStyle(color: Colors.white),
        // ),
        // Text(
        //   cardModel.cardNumber,
        //   style: const TextStyle(color: Colors.white),
        // ),
        // Text(
        //   cardModel.logo,
        //   style: const TextStyle(color: Colors.white),
        // ),
        // const CardName(),
        // const ChipAndColor(),
        // const CardNumber(),
        // const CardDate(),
        // const Cardholder(),
        // LoginPage(),
        // ElevatedButton(onPressed: () => {}, child: const Text("Button")),
      ],
    ),
  );
}

// Widget cardName() {}

// Widget cardLogo() {}

// Widget chipAndColor() {}

// Widget cardNumber() {}

// Widget cardDate() {}

// Widget cardholder() {}

Widget relleno() {
  return const Row(
    children: [Text("")],
  );
}

class Demo extends StatelessWidget {
  final User user;
  const Demo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Text(user.name);
  }
}
