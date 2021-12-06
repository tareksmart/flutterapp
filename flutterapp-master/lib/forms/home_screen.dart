// import 'dart:html';

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screens/menus/my_drawer.dart';
import 'package:flutter_screens/model/photo.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [];
  @override
  Widget build(BuildContext context) {
    //   'https://via.placeholder.com/150/0000FF/808080 ?Text=Digital.comC/O https://placeholder.com/',
    //   'https://via.placeholder.com/150/FF0000/FFFFFF?Text=Down.comC/O https://placeholder.com/',
    //   'https://via.placeholder.com/150/000000/FFFFFF/?text=IPaddress.netC/O https://placeholder.com/'
    // ];
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('home screen'),
        ),
        body: Center(
          child: myList.length > 0
              ? Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: ListView.builder(
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      return _buildMyList(myList[index]);
                      //Image.network(myList[index]);
                    },
                  ),
                )
              : CircularProgressIndicator(
                  backgroundColor: Colors.amber,
                ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _addFoto(),
        ),
      ),
    );
    ////////////////////////

    ////////////////////////////////////////
  }

  Widget _buildMyList(String img) {
    return Container(
      width: 500,
      child: Card(
        child: Image.network(
          img,
          width: 500,
        ),
        elevation: 10,
      ),
    );
  }

  _addFoto() async {
    int num = Random().nextInt(1000);
    Uri url = Uri.parse('http://jsonplaceholder.typicode.com/photos/$num');

    var respons = await http.get(url);
    var parsedRespons = jsonDecode(respons.body);
  //String url;
    Photo photo=new Photo(id:parsedRespons['id'],title:parsedRespons['title'],url:parsedRespons['url']
    ,thumbnailUrl:parsedRespons['thumbnailUrl']);
    setState(() {
      myList.add(photo.url);
      print('title'+photo.title);
      print('title'+photo.url);
    });

    print(myList.length);
  }
}
