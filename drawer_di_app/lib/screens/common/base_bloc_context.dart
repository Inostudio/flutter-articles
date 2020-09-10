import 'package:flutter/material.dart';
import 'base_bloc.dart';

abstract class BlocContextBase<T extends BlocBase> {
  void subscribe(T bloc, BuildContext context);
}
