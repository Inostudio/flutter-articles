import 'dart:async';

import 'package:simple_bloc_app/bloc/common/bloc_base.dart';

enum MainBlocEvent {
  incrementCounter
  // ... any other events your bloc should deal with
}

class MainBloc extends BlocBase {
  // your bloc data
  int _counter = 0;

  // stream controllers
  final StreamController<int> _counterController = StreamController<int>();
  final StreamController<MainBlocEvent> _eventController =
      StreamController<MainBlocEvent>();

  // getters for better usability
  // you can give clearer names to your bloc's inputs and outputs
  Sink<int> get _inCounter => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  Sink<MainBlocEvent> get inEvent => _eventController.sink;
  Stream<MainBlocEvent> get _outEvent => _eventController.stream;

  MainBloc() {
    // subscription to event stream
    // here you will process events from UI side
    _outEvent.listen(_handleEvent);
  }

  // alternative to separate event stream
  void onIncrementButton() {
    _handleIncrementCounterEvent();
  }

  @override
  void dispose() {
    // close all the controllers here
    _eventController.close();
    _counterController.close();
  }

  void _handleEvent(MainBlocEvent event) {
    switch (event) {
      case MainBlocEvent.incrementCounter:
        _handleIncrementCounterEvent();
        break;
      default:
        // for debug purposes - ensures you don't miss any enum case
        assert(false, "Should never reach there");
        break;
    }
  }

  void _handleIncrementCounterEvent() {
    _inCounter.add(++_counter);
  }
}
