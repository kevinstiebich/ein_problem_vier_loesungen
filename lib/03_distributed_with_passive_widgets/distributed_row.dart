import 'package:flutter/material.dart';
import 'package:flutter_application_2/02_distributed/distributed_quadrant.dart';

/// Creates a row containing 2 boxes of counters and their buttons.
class DistributedRow extends StatelessWidget {
  final int counterLeft;
  final void Function() incrementCounterLeft;
  final void Function() decrementCounterLeft;

  final int counterRight;
  final void Function() incrementCounterRight;
  final void Function() decrementCounterRight;

  const DistributedRow({
    required this.counterLeft,
    required this.incrementCounterLeft,
    required this.decrementCounterLeft,
    required this.counterRight,
    required this.incrementCounterRight,
    required this.decrementCounterRight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Kasten links
        DistributedQuadrant(
          counter: counterLeft,
          incrementCounter: incrementCounterLeft,
          decrementCounter: decrementCounterLeft,
        ),

        // Kasten rechts
        DistributedQuadrant(
          counter: counterRight,
          incrementCounter: incrementCounterRight,
          decrementCounter: decrementCounterRight,
        ),
      ],
    );
  }
}
