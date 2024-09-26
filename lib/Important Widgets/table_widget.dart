// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Table Data ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      //table widget use for organize data by the way of tabular form
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Table(
          border: TableBorder.all(width: 1, color: Colors.red),
          children: [
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "ID",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Quality",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("01"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Iqbal"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Ajaira"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("02"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Shourob"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Neka"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("03"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Akil"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Habla"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("04"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Jihad"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Natok"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("05"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sayed"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Abal"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("06"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sagor"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Driver"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("07"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Rokib"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Cadree"),
              )),
            ]),
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("08"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Arefin"),
              )),
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lier"),
              )),
            ]),
          ],
        ),
      )),
    );
  }
}
