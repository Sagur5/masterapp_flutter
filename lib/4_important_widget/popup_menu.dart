// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:masterapp_flutter/4_important_widget/Cupertino_Alert_Dialog.dart';
import 'package:masterapp_flutter/4_important_widget/alerDialog.dart';
import 'package:masterapp_flutter/4_important_widget/future_builder.dart';

class PopupMenuButtonPage extends StatelessWidget {
  const PopupMenuButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pop up menu Button"),
        backgroundColor: Colors.yellow,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_horiz),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text("Home"),
                  value: "home",
                ),
                PopupMenuItem(
                  child: Text("Chat"),
                  value: "chat",
                ),
                PopupMenuItem(
                  child: Text("Notification"),
                  value: "notification",
                ),
              ];
            },
            offset: Offset(0, 100),
            onSelected: (value) {
              print("You have selected : $value");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CupertinoAlertDialogPage()),
                );
              },
              child: Text("Go to Cupertino Dialog Page"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertDialogPage()),
                );
              },
              child: Text("Go to Alert Dialog Page"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FutureBuilderPage()),
                );
              },
              child: Text("Go to Future Builder Page"),
            ),
          ],
        ),
      ),
    );
  }
}
