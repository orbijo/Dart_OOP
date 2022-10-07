import 'Contact.dart';

class Phonebook {
  List<Contact> _contacts = [];

  getContact(String phone_number) {
    //check if any contacts contain the phone number and returns it. returns null if none.
    return (this
            ._contacts
            .any((contact) => contact.phone_number == phone_number)
        ? this
            ._contacts
            .singleWhere((element) => element.phone_number == phone_number)
        : null);
  }

  void addContact(String first_name, String last_name, String phone_number,
      String address) {
    if (getContact(phone_number) != null) {
      print(
          '\x1B[31mThere is an existing contact with the same phone number.\x1B[0m');
    } else {
      this._contacts.add(Contact(first_name, last_name, phone_number, address));
    }
  }

  void displayAllContacts() {
    print('\n');
    for (var contact in this._contacts) {
      print(
          '${contact.phone_number} - ${contact.first_name} ${contact.last_name} - ${contact.address}');
    }
  }

  void deleteContact(String phone_number) {
    if (getContact(phone_number) != null) {
      this
          ._contacts
          .removeWhere((contact) => contact.phone_number == phone_number);
    } else {
      print('\x1B[31mContact Not Found.\x1B[0m');
    }
  }

  void displayContact(Contact? contact) {
    if (contact != null) {
      print('\nContact With The Phone Number: ${contact.phone_number}');
      print('First Name: ${contact.first_name}');
      print('Last Name: ${contact.last_name}');
      print('Address: ${contact.address}');
    } else {
      print('\x1B[31mContact Not Found.\x1B[0m');
    }
  }
}
