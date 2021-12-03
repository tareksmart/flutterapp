import 'package:flutter/material.dart';
import 'forms/first_screen.dart';
import 'forms/home_screen.dart';
import 'forms/second_screen.dart';
import 'menus/my_drawer.dart';
import 'utils/my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // initialRoute: false?'/home':'/second',
      routes: {
        '/home': (context) => HomeScreen(),
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen()
      },
      title: 'home app',
      theme: MyThemeData,
      home: new Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Home screen',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: Text('main'),
      ),
    );
  }
}
