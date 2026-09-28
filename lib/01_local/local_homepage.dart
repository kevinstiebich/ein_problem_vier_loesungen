import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _incrementCounter(3),
                          icon: Icon(Icons.arrow_upward, color: Colors.white),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 7,
                        ),
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
                          '${_counters[0]}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _decrementCounter(3),
                          icon: Icon(Icons.arrow_downward, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                // Kasten oben rechts
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _incrementCounter(2),
                          icon: Icon(Icons.arrow_upward, color: Colors.white),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 7,
                        ),
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
                          '${_counters[1]}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _decrementCounter(2),
                          icon: Icon(Icons.arrow_downward, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // untere Reihe der Counter
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Kasten unten links
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _incrementCounter(1),
                          icon: Icon(Icons.arrow_upward, color: Colors.white),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 7,
                        ),
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
                          '${_counters[2]}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _decrementCounter(1),
                          icon: Icon(Icons.arrow_downward, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                // Kasten unten rechts
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _incrementCounter(0),
                          icon: Icon(Icons.arrow_upward, color: Colors.white),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 7,
                        ),
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
                          '${_counters[3]}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: IconButton(
                          onPressed: () => _decrementCounter(0),
                          icon: Icon(Icons.arrow_downward, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
