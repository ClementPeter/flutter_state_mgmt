import 'package:flutter/material.dart';

class Counter {
  final ValueNotifier<int> count = ValueNotifier(0);

  void incrementCount() {
    //count.value++;
    count.value = count.value + 1;
  }
}
