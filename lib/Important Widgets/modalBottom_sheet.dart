// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomePage100 extends StatefulWidget {
  const HomePage100({super.key});

  @override
  State<HomePage100> createState() => _HomePage100State();
}

class _HomePage100State extends State<HomePage100> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Modal Bottom Sheet"),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min, // Adjust the size of the modal sheet
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: Text("Share"),
                        leading: Icon(Icons.share),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: Text("Edit"),
                        leading: Icon(Icons.edit),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: Text("Copy"),
                        leading: Icon(Icons.copy),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              "Show Modal Sheet",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
