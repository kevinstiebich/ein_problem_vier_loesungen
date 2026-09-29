import 'package:flutter/material.dart';

class Notifier extends ChangeNotifier {
  final int index;
  final Function(int index) incrementCounter;
  final Function(int index) decrementCounter;

  Notifier({
    required this.index,
    required this.incrementCounter,
    required this.decrementCounter,
  });

  void increment() {
    incrementCounter(index);
    notifyListeners();
  }

  void decrement() {
    decrementCounter(index);
    notifyListeners();
  }
}
