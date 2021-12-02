import 'package:flutter/material.dart';
import 'package:flutter_screens/menus/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> myList = [
      'https://via.placeholder.com/150/0000FF/808080 ?Text=Digital.comC/O https://placeholder.com/',
      'https://via.placeholder.com/150/FF0000/FFFFFF?Text=Down.comC/O https://placeholder.com/',
      'https://via.placeholder.com/150/000000/FFFFFF/?text=IPaddress.netC/O https://placeholder.com/'
    ];
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('home screen'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return _buildMyList(myList[index]);
              //Image.network(myList[index]);
            },
          ),
        ),
      ),
    );
    ////////////////////////

    ////////////////////////////////////////
  }

  Widget _buildMyList(String img) {
    return Container(
      width: 500,
      child: Card(child: Image.network(img)),
    );
  }
}
