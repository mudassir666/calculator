import 'package:flutter/material.dart';

import 'calculate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.black),
      home: Calculator(),
    );
  }
}
