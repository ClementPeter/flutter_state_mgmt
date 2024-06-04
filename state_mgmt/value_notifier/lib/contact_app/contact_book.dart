//State Management Logic - Using ValueNotifier

import 'package:flutter/material.dart';
import 'package:value_notifier/contact_app/contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  //1. Singleton instance pattern
  ContactBook._sharedInstance() : super([]); //constructor

  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  // //2. Create a contact storage (Delete) and replace with "value" from ValueNotifier
  // final List<Contact> _contacts = [];

  //2. Expose the length of our contact
  int get length => value.length;

  //2. Add to contacts function
  void add({required Contact contact}) {
    if (contact.name.isEmpty) {
      return;
    }

    print('Add contact ::::: $value');
    value.add(contact);
    notifyListeners();
  }

  //4. Remove from the _contact list
  void remove({required Contact contact}) {
    print('remove contact ::::: $value');
    value.remove(contact);
    notifyListeners();
  }

  //5. Access _contacts data using it's index
  Contact? contact({required int atIndex}) {
    return value.length > atIndex ? value[atIndex] : null;
  }
}

//
//
//
//
//
//

///Demo 2 - Creating State mgmt w/o factory constructor

// import 'package:flutter/material.dart';
// import 'package:value_notifier/contact_app/contact.dart';

// class ContactBook extends ValueNotifier<List<Contact>> {
//   // ContactBook({List<Contact>? contacts}) : super(contacts ?? []);
//   ContactBook() : super([]);

//   //2. Expose the length of our contact
//   int get length => value.length;

//   //2. Add to contacts function
//   void add({required Contact contact}) {
//     value.add(contact);
//     notifyListeners();

//     //OR this -> No need for notifyListeners since we are accesing the setter directly
//     //value = [...value, contact];
//     print('Add contact ::::: $value');
//   }

//   //4. Remove from the _contact list
//   void remove({required Contact contact}) {
//     //value.remove(contact);
//     // notifyListeners();

//     var oldContact = [...value];
//     oldContact.remove(contact);

//     value = oldContact;
//     print('remove contact ::::: $value');
//   }

//   //5. Access _contacts data using it's index
//   Contact? contact({required int atIndex}) {
//     return value.length > atIndex ? value[atIndex] : null;
//   }
// }
