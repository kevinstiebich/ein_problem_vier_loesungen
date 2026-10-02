import 'package:flutter_application_2/04_global/counter_notifier.dart';
import 'package:flutter_application_2/04_global/counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final riverpod = NotifierProvider<CounterNotifier, CounterState>(
  () => CounterNotifier(),
);
