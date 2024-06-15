import 'package:flutter/material.dart';
import 'package:uyishi/views/screen/computatation_screen_2misol.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Async Computation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComputationScreen(),
    );
  }
}