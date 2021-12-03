import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/forms/first_screen.dart';
import 'package:flutter_screens/forms/home_screen.dart';
import 'package:flutter_screens/forms/second_screen.dart';

class myMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 20,
          child: ListTile(
            title: Text('first screen'),
            onTap: () {
             HomeScreen()!=null? Navigator.pushNamed(context, '/first'):CircularNotchedRectangle();
            },
          ),
        ),
        Card(color: Colors.red,
          child: ListTile(
            title: Text('second screen'),
            onTap: () {
              Navigator.pushNamed(context, '/second');
              
              
            },
          ),
        ),
        Card(color: Colors.red,
          child: ListTile(
            title: Text('home screen'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        )
      ],
    );
  }
}
