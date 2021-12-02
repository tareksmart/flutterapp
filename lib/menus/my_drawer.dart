import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_menu_item.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: Container(
      color: Theme.of(context).primaryColorDark,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('tarek smart'),
            accountEmail: Text('tareksmart@gmail.com'),
            currentAccountPicture: Image.asset(
              'asset/images/flutter.jpg',
              width: 150,
              height: 200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.white,
          ),
          myMenuItem(),
        ],
      ),
    ));
  }
}
