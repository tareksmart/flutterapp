import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/forms/first_screen.dart';
import 'package:flutter_screens/forms/home_screen.dart';
import 'package:flutter_screens/menus/my_drawer.dart';
import 'package:flutter_screens/utils/my_theme_data.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
     
      theme: MyThemeData,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('second screen'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('click back')),
        ),
      ),
    );
  }
}
