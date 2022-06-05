import 'package:epasar/page/page1.dart';
import 'package:epasar/page/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Pasar',
      home: Page1(),
    );
  }
}
