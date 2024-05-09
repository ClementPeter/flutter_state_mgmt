//State Management Logic

import 'package:value_notifier/contact.dart';

class ContactBook {
  //1. Singleton instance pattern
  ContactBook._sharedInstance(); //constructor

  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  //2. Create a contact storage
  final List<Contact> _contacts = [];

  //3. Expose the length of our contact
  int get length => _contacts.length;

  //4. Add to contacts function
  void add({required Contact contact}) {
    _contacts.add(contact);
  }

  //5. Remove from the _contact list
  void remove({required Contact contact}) {
    _contacts.remove(contact);
  }

  //6. Access _contacts data using it's index
  Contact? contact({required int atIndex}) {
    return _contacts.length > atIndex ? _contacts[atIndex] : null;
  }
}
