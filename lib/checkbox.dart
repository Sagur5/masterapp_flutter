// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePageCheckbox extends StatefulWidget {
  const HomePageCheckbox({super.key});

  @override
  State<HomePageCheckbox> createState() => _HomePageCheckboxState();
}

class _HomePageCheckboxState extends State<HomePageCheckbox> {
  bool isSelected = false; // Initialize the variable properly

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CheckBox Widget"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        // Checkbox for yes/no or multiple selections
        child: Checkbox(
          value: isSelected, // Reflects whether the box is checked or unchecked
          onChanged: (bool? value) {
            setState(() {
              isSelected = value!; // Update the state of the checkbox
            });
          },
          activeColor: Colors.red, // Color of the checkbox when checked
          checkColor:
              Colors.amber, // Color of the check mark inside the checkbox
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePageCheckbox(),
  ));
}
