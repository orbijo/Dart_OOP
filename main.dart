import 'models/Card.dart';
import 'models/Deck.dart';

void main(List<String> args) {
  //Create Deck
  Deck deck = new Deck();

  //Display New Deck
  print('-----FRESH DECK OF CARDS-----');
  deck.printDeck();

  //Shuffle and Display
  print('\n-----SHUFFLED DECK OF CARDS-----');
  deck.shuffle();
  deck.printDeck();

  //Display Cards with Suit 'Hearts'
  print('\n-----HEARTS-----');
  deck.displayCards(deck.cardsWithSuit("Hearts"));
}
