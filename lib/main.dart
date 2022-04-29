import 'package:flutter/material.dart';
import 'screens/f1_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: F1Screen(),
    );
  }
}
