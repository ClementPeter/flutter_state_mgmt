import 'package:flutter/material.dart';

class Counter {
  final ValueNotifier<int> count = ValueNotifier(0);

  void incrementCount() {
    //count.value++;
    count.value = count.value + 1;
  }
}

// class Counter extends ValueNotifier<int> {

//   int count = 0;


//   Counter() : super(count);


//   //final ValueNotifier<int> count = ValueNotifier(0);

//   void incrementCount() {
//     // count.value++;
//     // count.value = count.value + 1;
//     value++;
//   }
// }
