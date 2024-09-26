
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder Widget"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
