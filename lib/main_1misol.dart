import 'package:flutter/material.dart';
import 'package:uyishi/views/screen/item_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVC Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListScreen(),
    );
  }
}