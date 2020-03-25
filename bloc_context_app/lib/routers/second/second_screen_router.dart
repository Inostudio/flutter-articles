import 'package:flutter/material.dart';
import 'package:simple_bloc_app/screens/second_screen.dart';

class SecondScreenRouter {
  static void openModule(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SecondScreen()));
  }
}
