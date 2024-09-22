// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields, file_names

import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

class HomePage16 extends StatefulWidget {
  const HomePage16({super.key});

  @override
  State<HomePage16> createState() => _HomePage16State();
}

class _HomePage16State extends State<HomePage16> {
  var _suggesionTextFieldController = new TextEditingController();
  List suggessionList = [
    'Jihad',
    'Shourob',
    'Sagor286',
    'Sagor444'
    'Rokib',
    'Arefin',
    'Iqbal',
    'Rassel',
    'Arshad',
    'Mehraj',
    'Shanto',
    'Sayed',
    'Mim',
    'Rafi',
    'Mim',
    'Ibrahim',
    'Nayema',
    'Noyon',
    'Ashik',
    'Solaiman',
    'Asif',
    'Akilur',
    'Samiha',
    'Rumi',
    'Arafat',
    'Nipa',
    'Fahim',
    'Faisal',
    'Farukh'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //auto complete widget flutter
      //save data and provide us auto suggession
      //4 steps for textfield auto suggession
      //Num1: Add Auto complete textfield dependencies : autocomplete_textfield: ^1.7.3
      //Num2:Create a suggested auto complete text field widget
      //Num3:Create a layout & use auto complete widget
      //Num4:Define 4 main parameters for auto complete widget
      //itemBuilder, itemsorted, itemSubmitted, itemBuilder
      appBar: AppBar(
        centerTitle: true,
        title: Text("Textfield Auto Complete Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            AutoCompleteTextField(
              key: GlobalKey<AutoCompleteTextFieldState>(),
              
              clearOnSubmit: false,
                controller: _suggesionTextFieldController,
                suggestions: suggessionList,
                style: TextStyle(color: Colors.red, fontSize: 16),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                itemFilter: (item, query) {
                  return item.toLowerCase().startsWith(query.toLowerCase());
                },
                itemSorter: (a, b) {
                  return a.compareTo(b);
                },
               itemSubmitted: (item) {
                 _suggesionTextFieldController.text=item;
               }, 
               itemBuilder: (context, item) {
                 return Container(
                  padding: EdgeInsets.all(20),
                  child: Row(children: <Widget> [
                    Text(item, 
                    style: TextStyle(color: Colors.green),
                    )
                  ],),
                 );
               },
                ),
          ],
        ),
      ),
    );
  }
}
