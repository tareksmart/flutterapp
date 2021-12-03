import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/menus/my_drawer.dart';
import 'package:flutter_screens/utils/my_theme_data.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: MyThemeData,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('first screen'),
        ),
        body: Center(
          child: Text('first screen'),
        ),
      ),
    );
  }
}