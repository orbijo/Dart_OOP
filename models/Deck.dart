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

  void printDeck() {
    for (Card card in _cards) {
      print(card.getCard());
    }
  }

  void shuffle() {
    this._cards.shuffle();
  }

  //Sir, forgive me for using Iterable instead of List. Dart extention is forcing me to use it since where() returns an Iterable.
  Iterable<Card> cardsWithSuit(String suit) {
    return this._cards.where((card) => card.suit == suit);
  }

  void displayCards(Iterable<Card> cards) {
    for (Card card in cards) {
      print(card.getCard());
    }
  }
}
