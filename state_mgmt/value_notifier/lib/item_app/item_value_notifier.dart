import 'package:flutter/material.dart';

class Item {
  final ValueNotifier<String> name;

  Item(String itemName) : name = ValueNotifier(itemName);
}
