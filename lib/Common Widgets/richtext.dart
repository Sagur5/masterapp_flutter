 // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

 import 'package:flutter/material.dart';


class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText Widget"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Hello ",
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                text: "Bold",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: " and ",
              ),
              TextSpan(
                text: "Italic",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}