// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ListView"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Item 1'),
              subtitle: Text('Subtitle for Item 1'),
              leading: Icon(Icons.ac_unit),
            ),
            ListTile(
              title: Text('Item 2'),
              subtitle: Text('Subtitle for Item 2'),
              leading: Icon(Icons.access_alarm),
            ),
            ListTile(
              title: Text('Item 3'),
              subtitle: Text('Subtitle for Item 3'),
              leading: Icon(Icons.accessibility),
            ),
            ListTile(
              title: Text('Item 4'),
              subtitle: Text('Subtitle for Item 4'),
              leading: Icon(Icons.account_balance),
            ),
            ListTile(
              title: Text('Item 5'),
              subtitle: Text('Subtitle for Item 5'),
              leading: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
