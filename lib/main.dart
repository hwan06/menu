import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Appbar',
        theme: ThemeData(primarySwatch: Colors.red),
        home: const MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping cart is clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/Lion.png'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/chunsik.png'),
                backgroundColor: Colors.white,
                radius: 100.0,
              ),
            ],
            accountName: const Text('Lion'),
            accountEmail: const Text('Lion@Lion.com'),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0))),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[850],
            ),
            title: const Text('Home'),
            onTap: () {
              print('Home is clicked');
            },
            trailing: Icon(
              Icons.add,
              color: Colors.grey[850],
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.grey[850]),
            title: const Text('Setting'),
            trailing: Icon(Icons.add, color: Colors.grey[850]),
            onTap: () {
              print('Settimg is clicked');
            },
          ),
          ListTile(
            leading:
                Icon(Icons.question_answer_rounded, color: Colors.grey[850]),
            title: const Text('Q&A'),
            trailing: Icon(Icons.add, color: Colors.grey[850]),
            onTap: () {
              print('Q&A is clicked');
            },
          ),
        ],
      )),
    );
  }
}
