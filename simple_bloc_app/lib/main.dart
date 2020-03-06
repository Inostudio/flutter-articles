import 'package:flutter/material.dart';
import 'package:simple_bloc_app/bloc/common/bloc_provider.dart';
import 'package:simple_bloc_app/bloc/main_bloc.dart';
import 'package:simple_bloc_app/screen/main_screen.dart';

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
  @override
  Widget build(BuildContext context) {
    // create both bloc and screen
    final MainBloc bloc = MainBloc();
    final MainScreen screen = MainScreen();

    // then use them to create provider instance
    return BlocProvider(
      child: screen,
      bloc: bloc,
    );
  }
}
