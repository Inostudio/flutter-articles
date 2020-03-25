import 'dart:async';

import 'package:simple_bloc_app/blocs/common/bloc_base.dart';

enum MainBlocEvent {
  goToNextScreen
  // ... any other events your bloc should deal with
}

class MainBloc extends BlocBase<MainBlocEvent> {
  // your bloc data
  int _counter = 0;

  // stream controllers
  final StreamController<int> _counterController = StreamController<int>();

  // getters for better usability
  // you can give clearer names to your bloc's inputs and outputs
  Sink<int> get _inCounter => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  MainBloc();

  void onIncrementButton() {
    _handleIncrementCounterEvent();
  }

  void onGoToNextScreenButton() {
    inEvents.add(BlocEvent(type: MainBlocEvent.goToNextScreen));
  }

  @override
  void dispose() {
    // close all the controllers here
    _counterController.close();

    // don't forget to call super's dispose
    super.dispose();
  }

  void _handleIncrementCounterEvent() {
    _inCounter.add(++_counter);
  }
}
