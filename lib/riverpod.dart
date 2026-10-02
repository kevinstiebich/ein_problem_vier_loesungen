import 'package:flutter_application_2/04_global/counter_notifier.dart';
import 'package:flutter_application_2/04_global/counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final refCounter = StateProvider<CounterNotifier>(
//   (ref) => CounterNotifier(
//     state: CounterState(topLeftCounter: 0, topRightCounter: 0, bottomLeftCounter: 0, bottomRightCounter: 0),
//   ),
// );

final refCounter = NotifierProvider<CounterNotifier, CounterState>(() => CounterNotifier());
