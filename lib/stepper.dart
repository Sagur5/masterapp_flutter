// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage15 extends StatefulWidget {
  const HomePage15({super.key});

  @override
  State<HomePage15> createState() => _HomePage15State();
}

int _currentActiveStep = 0;

List<Step> stepList() => [
      Step(
        isActive: _currentActiveStep >= 0,
        title: Text("Beginner"),
        content: Center(
          child: Text("I'm a Beginner Programmer"),
        ),
      ),
      Step(
        isActive: _currentActiveStep >= 1,
        title: Text("Mid Level"),
        content: Center(
          child: Text("I'm a Midlevel Programmer"),
        ),
      ),
      Step(
        isActive: _currentActiveStep >= 2,
        title: Text("Advanced"),
        content: Center(
          child: Text("I'm an Advanced Programmer"),
        ),
      ),
    ];

class _HomePage15State extends State<HomePage15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stepper"),
        backgroundColor: Colors.amber[200],
      ),
      body: Stepper(
        currentStep: _currentActiveStep,
        type: StepperType.vertical, // stepper showing horizontally or vertically
        steps: stepList(),
        onStepContinue: () {
          if (_currentActiveStep < (stepList().length - 1)) {
            setState(() {
              _currentActiveStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentActiveStep == 0) {
            return;
          }
          setState(() {
            _currentActiveStep -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _currentActiveStep = index;
          });
        },
      ),
    );
  }
}
