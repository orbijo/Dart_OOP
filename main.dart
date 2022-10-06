import 'models/Card.dart';
import 'models/Deck.dart';

void main(List<String> args) {
  //Create Deck
  Deck deck = new Deck();

  //Display New Deck
  print('-----FRESH DECK OF CARDS-----');
  deck.printCards();

  //Shuffle and Display
  print('\n-----SHUFFLED DECK OF CARDS-----');
  deck.shuffle();
  deck.printCards();

  //Display Cards with Suit 'Hearts'
  print('\n-----CARDS WITH SUIT OF HEARTS-----');
  for (Card card in deck.cardsWithSuit('Hearts')) {
    print('${card.value} of ${card.suit}');
  }
}
