
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 350,
          color: Colors.cyan,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                child: Text(
                  "Blue",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                color: Colors.green,
                child: Text(
                  "Green",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                color: Colors.red,
                child: Text(
                  "Red",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}