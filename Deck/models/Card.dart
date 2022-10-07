class Card {
  String value;
  String suit;

  Card(this.value, this.suit);

  String getCard() {
    return '$value of $suit';
  }
}
