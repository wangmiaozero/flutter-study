import 'package:flutter/material.dart';
import 'frosted_glass_demo.dart';

void main()=>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        body: FrostedClassDemo(),
      ),
    );
  }
}