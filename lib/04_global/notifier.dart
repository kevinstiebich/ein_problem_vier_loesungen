import 'package:flutter/material.dart';
import 'package:flutter_application_2/04_global/counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<CounterState> {
  void increment() {
    incrementCounter(index);
    notifyListeners();
  }

  void decrement() {
    decrementCounter(index);
    notifyListeners();
  }
}
