
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: Center(
        child: Text("Some content will be there"),
      ),
    );
  }
}