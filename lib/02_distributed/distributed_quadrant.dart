import 'package:flutter/material.dart';

/// Creates a quadrant with a counter and 2 buttons to raise and lower it.
class DistributedQuadrant extends StatelessWidget {
  /// Counts how many times the upward button was pushed minus the times the downward button was pushed.
  final int counter;

  /// Represents the index of the counter that is going to be changed when pushing buttons.
  final int pushIndex;

  /// Raises the counter.
  final Function(int index) incrementCounter;

  /// Lowers the counter.
  final Function(int index) decrementCounter;

  /// Constructor of the quadrant.
  /// [key]: Indentifies this widget.
  /// [counter]: Counts how many times the upward button was pushed minus the times the downward button was pushed.
  /// [pushIndex]: Represents the index of the counter that is going to be changed when pushing buttons.
  /// [incrementCounter]: Raises the counter.
  /// [decrementCounter]: Lowers the counter.
  const DistributedQuadrant({
    super.key,
    required this.counter,
    required this.pushIndex,
    required this.incrementCounter,
    required this.decrementCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
            child: IconButton(
              onPressed: () => incrementCounter(pushIndex),
              icon: Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 7),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 255, 154, 196),
                  Color.fromARGB(255, 180, 110, 139),
                ],
              ),
            ),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
            child: IconButton(
              onPressed: () => decrementCounter(pushIndex),
              icon: Icon(Icons.arrow_downward, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
