import 'package:flutter/material.dart';
import 'package:vanilla_contact/contact.dart';
import 'package:vanilla_contact/contact_book.dart';

class NewContactView extends StatefulWidget {
  const NewContactView({super.key});

  @override
  State<NewContactView> createState() => _NewContactViewState();
}

class _NewContactViewState extends State<NewContactView> {
  late final TextEditingController _controller;

  //final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final contactBook = ContactBook();
    return Scaffold(
      appBar: AppBar(
        title: const Text('state mgmt'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _controller,
            ),
          ),
          ElevatedButton(
            child: const Text('Add to list'),
            onPressed: () {
              //setstate is not needed here since the UI to be rebuilt isnt here

              final contact = Contact(name: _controller.text);
              ContactBook().add(contact: contact);
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
