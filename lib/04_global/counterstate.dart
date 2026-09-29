/// Represents the state of a counter.
class CounterState {
  /// Counter value.
  final int counter;

  /// Which counter is affected when pushing the buttons next to this counter.
  final int pushIndex;

  /// Creates a counter.
  /// [counter]: Counter value.
  /// [pushIndex]: Which counter is affected when pushing the buttons next to this counter.
  CounterState({required this.counter, required this.pushIndex});

  @override
  bool operator ==(Object other) {
    return other is CounterState && counter == other.counter;
  }

  /// Copies an existing CounterState object.
  CounterState copyWith({int? counter, int? pushIndex}) {
    return CounterState(
      counter: counter ?? this.counter,
      pushIndex: pushIndex ?? this.pushIndex,
    );
  }

  @override
  int get hashCode => counter.hashCode;
}
