// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  String value = ''; // Add this to store text field values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Text Field"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.blue,
              style: TextStyle(color: Colors.indigo),
              maxLines: 1,
              maxLength: 30,
              keyboardType: TextInputType.text, // Text input type
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.people), // Prefix icon
                labelText: "User Name",
                hintText: "Enter user name",
              ),
              onChanged: (text) {
                setState(() {
                  value = text;
                });
                print("$text");
              },
            ),
            TextField(
              cursorColor: Colors.blue,
              style: TextStyle(color: Colors.indigo),
              maxLines: 1,
              maxLength: 30,
              obscureText: true, // Hide input for password
              keyboardType: TextInputType.number, // Number input type
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.lock), // Prefix icon for password
                labelText: "Password",
                hintText: "Enter user password",
              ),
            ),
            TextField(
              cursorColor: Colors.blue,
              style: TextStyle(color: Colors.indigo),
              maxLines: 1,
              keyboardType: TextInputType.emailAddress, // Email input type
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email), // Prefix icon for email
                labelText: "Email",
                hintText: "Enter your email",
              ),
            ),
            SizedBox(height: 25), // Space between text fields
            TextField(
              cursorColor: Colors.blue,
              style: TextStyle(color: Colors.indigo),
              maxLines: 1,
              keyboardType: TextInputType.phone, // Phone input type
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.phone), // Prefix icon for phone number
                labelText: "Phone Number",
                hintText: "Enter your number",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

