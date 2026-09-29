import 'package:flutter/material.dart';
import 'package:flutter_application_2/03_distributed_with_passive_widgets/distributed_row.dart';

/// Creates 4 boxes with counters and changes their state.
class DistributedPassiveHomepage extends StatefulWidget {
  /// Creates the local homepage.
  /// [key]: Identifies this widget.
  const DistributedPassiveHomepage({super.key});

  @override
  State<DistributedPassiveHomepage> createState() =>
      _DistributedPassiveHomepage();
}

class _DistributedPassiveHomepage extends State<DistributedPassiveHomepage> {
  final List<int> _counters = [0, 0, 0, 0];
  int get _counterSum => _counters.reduce((a, b) => a + b);

  void _incrementCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  void _decrementCounter(int index) {
    setState(() {
      _counters[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Reihe über den Counterkästchen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(color: Colors.blueGrey),
                        child: Text(
                          '$_counterSum',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 213,
                          vertical: 20,
                        ),
                        child: const Text(
                          'Overengineered Counter',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(color: Colors.blueGrey),
                        child: Text(
                          '$_counterSum',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // obere Reihe der Counter
            DistributedRow(
              counter1: _counters[0],
              counter2: _counters[1],
              pushIndex1: 3,
              pushIndex2: 2,
              incrementCounter: _incrementCounter,
              decrementCounter: _decrementCounter,
            ),

            // untere Reihe der Counter
            DistributedRow(
              counter1: _counters[2],
              counter2: _counters[3],
              pushIndex1: 1,
              pushIndex2: 0,
              incrementCounter: _incrementCounter,
              decrementCounter: _decrementCounter,
            ),
          ],
        ),
      ),
    );
  }
}
