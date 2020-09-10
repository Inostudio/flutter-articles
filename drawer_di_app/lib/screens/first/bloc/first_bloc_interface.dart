import 'package:flutter_app/screens/common/base_bloc.dart';

enum FirstBlocEvent { openSomeDialog }

abstract class IFirstBloc extends BlocBase<FirstBlocEvent> {}
