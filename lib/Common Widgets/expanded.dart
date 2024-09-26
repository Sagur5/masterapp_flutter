
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Expanded Widget"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.brown,
                padding: EdgeInsets.all(20),
                child: Text("1"),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(20),
                child: Text("2"),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(20),
                child: Text("3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}