import 'package:flutter_app/screens/app_container/app_container_screen.dart';
import 'package:flutter_app/screens/common/bloc_provider.dart';
import 'package:flutter_app/screens/first/bloc/first_bloc_interface.dart';
import 'package:flutter_app/screens/menu/bloc/menu_bloc_interface.dart';
import 'package:flutter_app/screens/second/bloc/second_bloc_interface.dart';
import 'package:flutter_app/screens/third/bloc/third_bloc_interface.dart';

typedef BlocProvider<IMenuBloc> MenuBuilder();
typedef AppContainerScreen AppScreenBuilder();
typedef BlocProvider<IFirstBloc> FirstScreenBuilder();
typedef BlocProvider<ISecondBloc> SecondScreenBuilder();
typedef BlocProvider<IThirdBloc> ThirdScreenBuilder();
