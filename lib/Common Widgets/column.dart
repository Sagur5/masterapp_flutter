
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Column"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.brown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.deepOrange,
                padding: EdgeInsets.all(10),
                child: Text(
                  "One",
                  style: TextStyle(fontSize: 15, color: Colors.green),
                ),
              ),
              Container(
                color: Colors.indigo,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Two",
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ),
              ),
              Container(
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Three",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}