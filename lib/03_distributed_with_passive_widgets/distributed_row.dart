import 'package:flutter/material.dart';
import 'package:flutter_application_2/02_distributed/distributed_quadrant.dart';

/// Creates a row containing 2 boxes of counters and their buttons.
class DistributedRow extends StatelessWidget {
  /// Counter for the left box.
  final int counter1;

  /// Counter for the right box.
  final int counter2;

  /// Index of the counter that is pushed or lowered by clicking the buttons.
  final int pushIndex1;

  /// Index of the counter that is pushed or lowered by clicking the buttons.
  final int pushIndex2;

  /// Raises the counter.
  final Function(int index) incrementCounter;

  /// Lowers the counter.
  final Function(int index) decrementCounter;

  /// Creates an object containing 2 boxes of counter and their buttons.
  /// [key]: Identifies this widget.
  /// [counter1]: Counter for the left box.
  /// [counter2]: Counter for the right box.
  /// [pushIndex1]: Index of the counter that is pushed or lowered by clicking the buttons.
  /// [pushIndex2]: Index of the counter that is pushed or lowered by clicking the buttons.
  /// [incrementCounter]: Raises the counter.
  /// [decrementCounter]: Lowers the counter.
  const DistributedRow({
    super.key,
    required this.counter1,
    required this.counter2,
    required this.pushIndex1,
    required this.pushIndex2,
    required this.incrementCounter,
    required this.decrementCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Kasten oben links
        DistributedQuadrant(
          counter: counter1,
          pushIndex: pushIndex1,
          incrementCounter: incrementCounter,
          decrementCounter: decrementCounter,
        ),

        // Kasten oben rechts
        DistributedQuadrant(
          counter: counter2,
          pushIndex: pushIndex2,
          incrementCounter: incrementCounter,
          decrementCounter: decrementCounter,
        ),
      ],
    );
  }
}
