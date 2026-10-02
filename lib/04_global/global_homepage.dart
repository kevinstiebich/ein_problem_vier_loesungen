import 'package:flutter/material.dart';
import 'package:flutter_application_2/03_distributed_with_passive_widgets/distributed_row.dart';
import 'package:flutter_application_2/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Creates 4 boxes with counters and changes their state.
class GlobalHomepage extends ConsumerWidget {
  /// Creates the global homepage.
  /// [key]: Identifies this widget.
  GlobalHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counters = ref.watch(refCounter);
    final notifier = ref.read(refCounter.notifier);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reihe über den Counterkästchen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                        decoration: BoxDecoration(color: Colors.blueGrey),
                        child: Text('${counters.sum}', style: TextStyle(color: Colors.white, fontSize: 20)),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 213, vertical: 20),
                        child: const Text(
                          'Overengineered Counter',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                        decoration: BoxDecoration(color: Colors.blueGrey),
                        child: Text('${counters.sum}', style: TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // obere Reihe der Counter
            DistributedRow(
              counterLeft: counters.topLeftCounter,
              incrementCounterLeft: () {
                notifier.updateCounterState(bottomRightCounter: counters.bottomRightCounter + 1);
              },
              decrementCounterLeft: () {
                notifier.updateCounterState(bottomRightCounter: counters.bottomRightCounter - 1);
              },
              counterRight: counters.topRightCounter,
              incrementCounterRight: () {
                notifier.updateCounterState(bottomLeftCounter: counters.bottomLeftCounter + 1);
              },
              decrementCounterRight: () {
                notifier.updateCounterState(bottomLeftCounter: counters.bottomLeftCounter - 1);
              },
            ),

            // untere Reihe der Counter
            DistributedRow(
              counterLeft: counters.bottomLeftCounter,
              incrementCounterLeft: () {
                notifier.updateCounterState(topRightCounter: counters.topRightCounter + 1);
              },
              decrementCounterLeft: () {
                notifier.updateCounterState(topRightCounter: counters.topRightCounter - 1);
              },
              counterRight: counters.bottomRightCounter,
              incrementCounterRight: () {
                notifier.updateCounterState(topLeftCounter: counters.topLeftCounter + 1);
              },
              decrementCounterRight: () {
                notifier.updateCounterState(topLeftCounter: counters.topLeftCounter - 1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
