
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image"),
      ),
      body: SafeArea(
        child: Image.asset('assets/images/Dream.jpg'),
      ),
    );
  }
}