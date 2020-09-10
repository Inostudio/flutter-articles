import 'package:flutter_app/screens/common/base_bloc.dart';

enum SecondBlocEvent { openSomeDialog }

abstract class ISecondBloc extends BlocBase<SecondBlocEvent> {}
