// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  const FutureBuilderPage({super.key});

  Future<String> getData() {
    return Future.delayed(Duration(seconds: 3), () {
      return "Data Loaded"; // Return the data instead of throwing an error
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Future Builder"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Loading state
            }

            if (snapshot.hasData) {
              return Text(snapshot.data.toString()); // Show data
            } else {
              return Text(snapshot.error.toString()); // Show error (won't be reached now)
            }
          },
        ),
      ),
    );
  }
}
