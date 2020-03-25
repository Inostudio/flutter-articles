import 'package:flutter/material.dart';
import 'package:simple_bloc_app/blocs/common/bloc_provider.dart';
import 'package:simple_bloc_app/blocs/main/main_bloc.dart';
import 'package:simple_bloc_app/blocs/main/main_bloc_context.dart';
import 'package:simple_bloc_app/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // cache references to bloc and its context
  // to avoid their recreation and loosing events subscription
  final MainBloc bloc = MainBloc();
  final MainBlocContext blocContext = MainBlocContext();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MainScreen(),
      bloc: bloc,
      blocContext: blocContext,
    );
  }
}
