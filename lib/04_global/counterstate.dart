/// Represents the state of a counter.
class CounterState {
  /// Counter value.
  final int topLeftCounter;
  final int topRightCounter;
  final int bottomLeftCounter;
  final int bottomRightCounter;

  int get sum => topLeftCounter + topRightCounter + bottomLeftCounter + bottomRightCounter;

  /// Creates a counter.
  /// [counter]: Counter value.
  /// [pushIndex]: Which counter is affected when pushing the buttons next to this counter.
  CounterState({
    required this.topLeftCounter,
    required this.topRightCounter,
    required this.bottomLeftCounter,
    required this.bottomRightCounter,
  });

  /// Copies an existing CounterState object.
  CounterState copyWith({int? topLeftCounter, int? topRightCounter, int? bottomLeftCounter, int? bottomRightCounter}) =>
      CounterState(
        topLeftCounter: topLeftCounter ?? this.topLeftCounter,
        topRightCounter: topRightCounter ?? this.topRightCounter,
        bottomLeftCounter: bottomLeftCounter ?? this.bottomLeftCounter,
        bottomRightCounter: bottomRightCounter ?? this.bottomRightCounter,
      );
}
