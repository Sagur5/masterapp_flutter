
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Text Widget"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 200,
          color: Colors.blue,
          child: Text(
            "Hello World My Name is Jahid Hossain Sagur",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}