import 'package:flutter/material.dart';
import 'package:value_notifier/counter_app/couter_value_notifier.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  //ValueNotifier object instance
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    print('Build got triggered');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count:',
            ),
            ValueListenableBuilder(
              valueListenable: counter.count,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   counter.incrementCount();
          // });

          //works with or w/o setstate aint useful here (BETTER)
          counter.incrementCount();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
