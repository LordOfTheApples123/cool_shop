import 'dart:async';

class ValueStreamWrapper<T>{
  final StreamController<T> _controller = StreamController.broadcast();
  T? _value;

  Stream<T> get stream => _controller.stream;


  T? get valueOrNull => _value;

  ValueStreamWrapper();

  void accept(T value) {
    _value = value;
    _controller.add(value);
  }

  void dispose() {
    _controller.close();
  }
}