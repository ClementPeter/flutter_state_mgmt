import 'package:flutter/material.dart';

class TestList extends ValueNotifier<List<int>> {
  TestList(super._value);

  void add(int newValue) {
    value = [...value, newValue];
  }
}
