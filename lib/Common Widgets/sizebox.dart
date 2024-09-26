
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SizedBox"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Container(
                height: 200,
                color: Colors.cyan,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
