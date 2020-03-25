import 'dart:async';

import 'package:flutter/foundation.dart';

class BlocEvent<T> {
  T type;
  Map<String, dynamic> parameters;

  BlocEvent({@required this.type, this.parameters});
}

// Generic Interface for all BLoCs
abstract class BlocBase<T> {
  StreamController<BlocEvent<T>> _eventsController =
      StreamController<BlocEvent<T>>();

  @protected
  Sink<BlocEvent<T>> get inEvents => _eventsController.sink;

  Stream<BlocEvent<T>> get outEvents => _eventsController.stream;

  void dispose() {
    _eventsController.close();
  }
}
