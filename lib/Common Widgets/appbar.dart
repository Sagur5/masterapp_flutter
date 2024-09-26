
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 10,
        title: Text("AppBar"),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.alarm_add),
          SizedBox(width: 10),
          Icon(Icons.notification_add),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}