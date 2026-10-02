import 'package:flutter/material.dart';
import 'package:flutter_application_2/04_global/counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<CounterState> {
  CounterNotifier();

  void udpateCounterState({
    int? topLeftCounter,
    int? topRightCounter,
    int? bottomLeftCounter,
    int? bottomRightCounter,
  }) {
    state = state.copyWith(
      topLeftCounter: topLeftCounter,
      topRightCounter: topRightCounter,
      bottomLeftCounter: bottomLeftCounter,
      bottomRightCounter: bottomRightCounter,
    );
  }

  @override
  build() => CounterState(
    topLeftCounter: 0,
    topRightCounter: 0,
    bottomLeftCounter: 0,
    bottomRightCounter: 0,
  );
}
