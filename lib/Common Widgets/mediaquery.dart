
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: Builder(
        builder: (context) {
          final size = MediaQuery.of(context).size;
          final orientation = MediaQuery.of(context).orientation;
          return Center(
            child: Text(
              "Size: ${size.width} x ${size.height}\nOrientation: $orientation",
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
