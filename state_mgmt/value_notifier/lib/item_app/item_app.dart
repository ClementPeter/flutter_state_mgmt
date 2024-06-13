import 'package:flutter/material.dart';
import 'package:value_notifier/item_app/item_value_notifier.dart';

class ItemApp extends StatefulWidget {
  const ItemApp({super.key});

  @override
  State<ItemApp> createState() => _ItemAppState();
}

class _ItemAppState extends State<ItemApp> {
  //List of items
  List<Item> items = [
    Item('Item 1'),
    Item('Item 2'),
    Item('Item 3'),
  ];

  @override
  Widget build(BuildContext context) {
    print(items);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item App value notifier'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final Item item = items[index];

          return Dismissible(
              key: Key(item.name.value),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: ValueListenableBuilder(
                  valueListenable: item.name,
                  builder: (context, value, child) {
                    return Text(value);
                  },
                ),
              ));
        },
      ),
    );
  }
}
