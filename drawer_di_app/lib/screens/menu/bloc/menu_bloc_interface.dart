import 'package:flutter_app/screens/common/base_bloc.dart';

enum MenuBlocEvents { goToSomeScreen }

abstract class IMenuBloc extends BlocBase<MenuBlocEvents> {
  Stream<String> get outUserName;

  void onFirstOptionTap();
  void onSecondOptionTap();
}
