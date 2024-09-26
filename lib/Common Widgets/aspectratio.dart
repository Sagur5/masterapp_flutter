// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio Widget"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.pink,
            child: Center(
              child: Text("16:9 Aspect Ratio"),
            ),
          ),
        ),
      ),
    );
  }
}
