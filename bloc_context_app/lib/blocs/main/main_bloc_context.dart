import 'package:flutter/material.dart';
import 'package:simple_bloc_app/blocs/common/bloc_base.dart';
import 'package:simple_bloc_app/blocs/common/bloc_context_base.dart';
import 'package:simple_bloc_app/blocs/main/main_bloc.dart';
import 'package:simple_bloc_app/routers/second/second_screen_router.dart';

class MainBlocContext extends BlocContextBase<MainBloc> {
  @override
  void subscribe(MainBloc bloc, BuildContext context) {
    bloc.outEvents.listen((BlocEvent<MainBlocEvent> event) {
      switch (event.type) {
        case MainBlocEvent.goToNextScreen:
          SecondScreenRouter.openModule(context);
          break;
        default:
          assert(false, "Should never reach there");
          break;
      }
    });
  }
}
