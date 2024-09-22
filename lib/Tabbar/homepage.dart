// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:masterapp_flutter/Tabbar/one.dart';
import 'package:masterapp_flutter/Tabbar/three.dart';
import 'package:masterapp_flutter/Tabbar/two.dart';

class HomePage22 extends StatefulWidget {
  const HomePage22({super.key});

  @override
  State<HomePage22> createState() => _HomePage22State();
}

//Tabbar use for different different tabs page
class _HomePage22State extends State<HomePage22> {
  // PageController controller = PageController(); agei drker nei fact amra tabbar er vitor page gular class dhore call korbo
  // List<Widget> list =<Widget> [One (), Two(), Three()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //wrap with widget Deafult tab controller
      length: 3, //three tap bar
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TabBar"),
          backgroundColor: Colors.orange,
          //tab bar hbe app er modde bottom e
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.notification_important,
                size: 30,
              ),
              text: "Notification",
            ),
            Tab(
              icon: Icon(
                Icons.chat,
                size: 30,
              ),
              text: "Chat",
            ),
            Tab(
              icon: Icon(
                Icons.alarm,
                size: 30,
              ),
              text: "Alarm",
            )
          ]),
        ),
        body: TabBarView(children: [
          One(),
          Two(),
          Three(),
        ]),
      ),
    );
  }
}
