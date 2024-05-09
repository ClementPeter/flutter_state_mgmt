import 'package:uuid/uuid.dart';

//Model class
class Contact {
  final String name;
  final String id;

  Contact({required this.name}) : id = const Uuid().v4();
}
