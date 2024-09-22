// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoIndicatorPage extends StatelessWidget {
  const CupertinoIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cupertino Activity Indicator"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 20, // Set the radius of the indicator
          color: Colors.blue, // Optional: Specify the color (available in newer Flutter versions)
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CupertinoIndicatorPage(),
  ));
}
