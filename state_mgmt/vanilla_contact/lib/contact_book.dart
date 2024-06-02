//Manual State Management Logic without Value Notifier

//In this section
//NOTE: In the above snippet, the UI does not get any update because
//there is no actual trigger to update the state

import 'package:vanilla_contact/contact.dart';

class ContactBook {
  //1. Singleton instance pattern
  ContactBook._sharedInstance(); //constructor

  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  //2. Create a contact storage
  //final List<Contact> _contacts = [];

  final List<Contact> _contacts = [
    const Contact(name: 'Name 1'),
    const Contact(name: 'Name 2'),
    const Contact(name: 'Name 3'),
  ];

  //3. Expose the length of our contact
  int get length => _contacts.length;

  //4. Add to contacts function
  void add({required Contact contact}) {
    print(_contacts);
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
