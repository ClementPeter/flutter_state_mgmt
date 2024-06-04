// import 'package:flutter/material.dart';
// import 'package:value_notifier/contact_app/contact_book.dart';
// import 'package:value_notifier/contact_app/new_contact_view.dart';

// /* Contact APP main.dart */
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'State mgmt'),
//       routes: {
//         '/new-contact': (context) => const NewContactView(),
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final contactBook = ContactBook();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: ValueListenableBuilder(
//         valueListenable: ContactBook(),
//         builder: (context, value, child) {
//           final contacts = value;
//           return ListView.builder(
//             itemCount: contacts.length,
//             itemBuilder: (context, index) {
//               final contact = contacts[index];

//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Dismissible(
//                   key: ValueKey(contact.id),
//                   background: Container(color: Colors.red),
//                   onDismissed: (direction) {
//                     //value.remove(contact);
//                     ContactBook().remove(contact: contact);
//                   },
//                   child: ListTile(
//                     title: Text(contact.name),
//                     tileColor: Colors.grey,
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).pushNamed('/new-contact');
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:value_notifier/counter_app/couter_app.dart';

// /* Counter App main.dart */
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const CounterApp(),
//     );
//   }
// }

//
//
//
//
//
//
//
//
//
//
//
//
//
import 'package:flutter/material.dart';
import 'package:value_notifier/form_validation/form.dart';

/* LoginForm App main.dart */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginForm(),
    );
  }
}
