import 'package:flutter/material.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(title: Text('Hi Flutter'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text('Hi Flutter ...', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ),
      ),
    );;
  }
}
