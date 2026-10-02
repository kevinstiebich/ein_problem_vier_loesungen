import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Creates a quadrant with a counter and 2 buttons to raise and lower it.
class DistributedQuadrant extends ConsumerWidget {
  final int counter;
  final void Function() incrementCounter;
  final void Function() decrementCounter;

  const DistributedQuadrant({
    required this.counter,
    required this.incrementCounter,
    required this.decrementCounter,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
            child: IconButton(
              onPressed: () => incrementCounter(),
              icon: Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 7),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 255, 154, 196), Color.fromARGB(255, 180, 110, 139)],
              ),
            ),
            child: Text('$counter', style: Theme.of(context).textTheme.headlineMedium),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
            child: IconButton(
              onPressed: () => decrementCounter(),
              icon: Icon(Icons.arrow_downward, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
