import 'package:flutter/material.dart';
import 'package:flutter_application_2/03_distributed_with_passive_widgets/distributed_row.dart';
import 'package:flutter_application_2/04_global/counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GlobalHomepage extends StatefulWidget {
  const GlobalHomepage({super.key});

  @override
  State<GlobalHomepage> createState() => _GlobalHomepage();
}

class _GlobalHomepage extends State<GlobalHomepage> {
  final List<CounterState> _counters = [
    CounterState(counter: 0, pushIndex: 3),
    CounterState(counter: 0, pushIndex: 2),
    CounterState(counter: 0, pushIndex: 1),
    CounterState(counter: 0, pushIndex: 0),
  ];

  int get _counterSum =>
      _counters[0].counter +
      _counters[1].counter +
      _counters[2].counter +
      _counters[3].counter;

  void _incrementCounter(int index) {
    setState(() {
      _counters[index] = _counters[index].copyWith(
        counter: _counters[index].counter + 1,
      );
    });
  }

  void _decrementCounter(int index) {
    setState(() {
      _counters[index] = _counters[index].copyWith(
        counter: _counters[index].counter - 1,
      );
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
              counter1: _counters[0].counter,
              counter2: _counters[1].counter,
              pushIndex1: 3,
              pushIndex2: 2,
              incrementCounter: _incrementCounter,
              decrementCounter: _decrementCounter,
            ),

            // untere Reihe der Counter
            DistributedRow(
              counter1: _counters[2].counter,
              counter2: _counters[3].counter,
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
