import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/insta/accountpage.dart';
import 'package:flutter_app/insta/homepage.dart';
import 'package:flutter_app/insta/searchpage.dart';

class Tabpage extends StatefulWidget {
  @override
  _TabpageState createState() => _TabpageState();
}

class _TabpageState extends State<Tabpage> {
  int _selectedIndex = 0;
  List _pages = [
    Homepage(),
    Searchpage(),
    Accountpage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar : BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items : [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("Account")),
        ],
      )



    );
  }

  void _onItemTapped(int value) {
    _selectedIndex = value;
  }
}


