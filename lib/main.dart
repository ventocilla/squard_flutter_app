import 'package:flutter/material.dart';
import 'file:///C:/Users/bt023473/Desktop/Leo_Coding/Flutter/Flutter_The_Growing_Dev/apps%20for%20portfolio/squad_app/lib/pages/dash/dashPage.dart';

// https://www.youtube.com/watch?v=r_k1uBXSqkw

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Squad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashPage(),
    );
  }
}

