import 'dart:io';

import 'models/Phonebook.dart';

void main(List<String> args) {
  //This program considers every phone number to be unique.
  String fname, lname, number, address;
  Phonebook phonebook = new Phonebook();
  //insert 5 contacts
  phonebook.addContact('John', 'Doe', '1001', 'Neverland');
  phonebook.addContact('Jane', 'Doe', '1002', 'Nowhere');
  phonebook.addContact('Luffy', 'Monkey', '3D2Y', 'East Blue');
  phonebook.addContact('Foo', 'Bar', '8008', 'Foobar St., Foobarton');
  phonebook.addContact('Josh', 'Orbiso', '09123', 'Behind You');

  //display contacts
  phonebook.displayAllContacts();

  //user inputs contact
  print('\nAdd Contact');
  print('Enter your first name:');
  fname = stdin.readLineSync()!;
  print('Enter your last name:');
  lname = stdin.readLineSync()!;
  print('Enter your address:');
  address = stdin.readLineSync()!;
  print('Enter your phone number:');
  number = stdin.readLineSync()!;

  //insert and display contact
  phonebook.addContact(fname, lname, number, address);
  phonebook.displayAllContacts();

  //user inputs phone number to be deleted
  print('\nEnter the phone number you want to delete:');
  number = stdin.readLineSync()!;

  //deletes contact and displays phonebook
  phonebook.deleteContact(number);
  phonebook.displayAllContacts();

  //user input to search contact then search and display
  print('\nEnter the phone number of the contact you want to search:');
  number = stdin.readLineSync()!;
  phonebook.displayContact(phonebook.getContact(number));
}
