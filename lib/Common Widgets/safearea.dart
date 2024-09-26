
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text("SafeArea Example"),
          ),
        ),
      ),
    );
  }
}