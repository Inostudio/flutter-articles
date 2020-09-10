import 'dart:async';

import 'package:flutter/foundation.dart';

class BlocEvent<T> {
  T type;
  Map<String, dynamic> parameters;

  BlocEvent({@required this.type, this.parameters});
}

// Generic Interface for all BLoCs
abstract class BlocBase<T> {
  StreamController<BlocEvent<T>> _uiEventsController =
      StreamController<BlocEvent<T>>();

  @protected
  Sink<BlocEvent<T>> get inUiEvents => _uiEventsController.sink;

  Stream<BlocEvent<T>> get outUiEvents => _uiEventsController.stream;

  void dispose() {
    _uiEventsController.close();
  }
}
