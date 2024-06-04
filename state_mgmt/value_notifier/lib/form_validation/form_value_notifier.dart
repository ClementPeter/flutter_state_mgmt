import 'package:flutter/material.dart';

class FormValueNotifier {
  final ValueNotifier<String> email = ValueNotifier<String>('');
  final ValueNotifier<String> password = ValueNotifier('');

  bool get isValid => email.value.isNotEmpty && password.value.isNotEmpty;
}
