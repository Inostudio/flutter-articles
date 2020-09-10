import 'package:flutter/material.dart';
import 'package:flutter_app/di/injector.dart';

void main() {
  Injection.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Injection.getCompositionRoot(),
    );
  }
}
