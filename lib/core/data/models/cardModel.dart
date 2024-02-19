import 'package:fitibank_card/core/domain/entities/card.dart';

class CardModel {
  final String cardOwner;
  final String cardNumber;
  final String logo;
  final String cardDate;
  final int cvv;

// Constructor
  CardModel(
      {required this.cardDate,
      required this.cardOwner,
      required this.cardNumber,
      required this.logo,
      required this.cvv});

  factory CardModel.fromEntity(CardEntity card) {
    return CardModel(
        cardOwner: card.cardOwner,
        cardDate: card.cardDate,
        cardNumber: card.cardNumber,
        logo: card.logo,
        cvv: 0);
  }

  void getCvv() {}
}
