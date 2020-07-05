import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        backgroundColor: Color(0xff392850),
        title: Text('List Page'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Hi ..',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
