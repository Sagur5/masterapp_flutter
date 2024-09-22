// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masterapp_flutter/4_important_widget/alerDialog.dart';
import 'package:masterapp_flutter/4_important_widget/future_builder.dart';
import 'package:masterapp_flutter/4_important_widget/popup_menu.dart';

class CupertinoAlertDialogPage extends StatelessWidget {
  const CupertinoAlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dialog = CupertinoAlertDialog(
      title: Text("Flutter course"),
      content: Text("Do you like flutter?"),
      actions: [
        CupertinoButton(
          child: Text("No"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoButton(
          child: Text("Yes"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cupertino Alert Dialog"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => dialog,
                );
              },
              child: Text("Show Dialog"),
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
                  MaterialPageRoute(builder: (context) => PopupMenuButtonPage()),
                );
              },
              child: Text("Go to Popup Menu Page"),
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
