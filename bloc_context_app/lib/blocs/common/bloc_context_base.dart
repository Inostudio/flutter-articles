
import 'package:flutter/material.dart';
import 'package:simple_bloc_app/blocs/common/bloc_base.dart';

abstract class BlocContextBase<T extends BlocBase> {

  // обязательный к реализации метод
  void subscribe(T bloc, BuildContext context);

  // общие обработчики диалогов, которые могут пригодиться каждому bloc

  void showInfoAlert(BuildContext context, String message) {
    // ...
  }

  void showError(BuildContext context, String message) {
    // ...
  }

  void showProgressDialog(BuildContext context) {
    // ...
  }
}
