import 'package:flutter/material.dart';
import 'package:flutter_application_2/02_distributed/distributed_quadrant.dart';

class DistributedPassiveHomepage extends StatefulWidget {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Kasten oben links
                DistributedQuadrant(
                  counter: _counters[0],
                  pushIndex: 3,
                  incrementCounter: _incrementCounter,
                  decrementCounter: _decrementCounter,
                ),

                // Kasten oben rechts
                DistributedQuadrant(
                  counter: _counters[1],
                  pushIndex: 2,
                  incrementCounter: _incrementCounter,
                  decrementCounter: _decrementCounter,
                ),
              ],
            ),

            // untere Reihe der Counter
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Kasten unten links
                DistributedQuadrant(
                  counter: _counters[2],
                  pushIndex: 1,
                  incrementCounter: _incrementCounter,
                  decrementCounter: _decrementCounter,
                ),

                // Kasten unten rechts
                DistributedQuadrant(
                  counter: _counters[3],
                  pushIndex: 0,
                  incrementCounter: _incrementCounter,
                  decrementCounter: _decrementCounter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
