import 'package:flutter/material.dart';
import 'package:flutter_application_2/04_global/counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// #####################################################################
// Der Notifier ist nicht fertig, bzw. der gesamte global_homepage-Teil
// #####################################################################

class CounterNotifier extends Notifier<List<CounterState>> {
  void incrementCounter(int index) {
    setState(() {
      _counters[index] = _counters[index].copyWith(
        counter: _counters[index].counter + 1,
      );
    });
  }

  void decrementCounter(int index) {
    setState(() {
      _counters[index] = _counters[index].copyWith(
        counter: _counters[index].counter - 1,
      );
    });
  }
}
