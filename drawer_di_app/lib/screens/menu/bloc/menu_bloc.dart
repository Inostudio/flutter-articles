import 'package:flutter_app/screens/menu/bloc/menu_bloc_interface.dart';
import 'package:rxdart/rxdart.dart';

class MenuBloc extends IMenuBloc {
  final BehaviorSubject<String> _userNameSubject =
      BehaviorSubject<String>.seeded("User");

  Sink<String> get _inUserName => _userNameSubject.sink;
  @override
  Stream<String> get outUserName => _userNameSubject.stream;

  void shutdown() {
    _userNameSubject.close();
  }

  @override
  void onFirstOptionTap() {
    print("First option tap!");
  }

  @override
  void onSecondOptionTap() {
    print("Second option tap!");
  }

  @override
  void dispose() {
    // this method was intentionally left empty
    // we don't want to close/recreate subscriptions each time menu is shown
  }
}
