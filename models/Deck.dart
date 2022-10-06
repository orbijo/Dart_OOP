import 'Card.dart';

class Deck {
  List<Card> _cards = [];

  Deck() {
    List<String> values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ];
    List<String> suits = ["Hearts", "Spades", "Clubs", "Diamonds"];

    for (String suit in suits) {
      for (String value in values) {
        Card card = new Card(value, suit);
        _cards.add(card);
      }
    }
  } //end Constructor

  void printCards() {
    for (Card card in _cards) {
      print(card.getCard());
    }
  }

  void shuffle() {
    this._cards.shuffle();
  }

  Iterable<Card> cardsWithSuit(String suit) {
    return this._cards.where((card) => card.suit == suit);
  }
}
