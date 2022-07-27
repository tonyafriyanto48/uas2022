import 'package:flutter/material.dart';
import 'package:uas2022/profile.dart';
import 'package:uas2022/screen_satu.dart';
import 'package:uas2022/screen_dua.dart';
import 'package:uas2022/screen_empat.dart';
import 'package:uas2022/screen_lima.dart';
import 'package:uas2022/screen_tiga.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView Navigation I',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Explore Jakarta'),
        actions: [
          IconButton(
            icon: Icon(Icons.campaign),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDetails()),
                );
              }),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('get'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen_satu(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('push'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen_dua(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('patch'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen_tiga(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('PUT'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen_empat(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Delete'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen_lima(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}