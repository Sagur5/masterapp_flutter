// ignore_for_file: prefer_const_constructors, file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:masterapp_flutter/4_important_widget/Cupertino_Alert_Dialog.dart';
import 'package:masterapp_flutter/4_important_widget/future_builder.dart';
import 'package:masterapp_flutter/4_important_widget/popup_menu.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _dialog = AlertDialog(
      title: Text("JSON parsing error!"),
      content: Text("This error occurs due to poor network connection"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Ok"),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alert Dialog"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showDialog(context: context, builder: (context) => _dialog);
              },
              child: Text("Show Dialog Box"),
            ),
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
