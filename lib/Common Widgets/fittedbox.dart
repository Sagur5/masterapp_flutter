
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Widget"),
      ),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text("This text will fit inside the box"),
        ),
      ),
    );
  }
}