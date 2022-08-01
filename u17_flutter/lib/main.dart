import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:u17_flutter/widgets/book_page.dart';
import 'package:u17_flutter/widgets/class_page.dart';
import 'package:u17_flutter/widgets/home_page.dart';
import 'package:u17_flutter/widgets/my_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'U17_flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int _currentIndex = 0;
  Widget _currBody = HomePage();

  _ontap(int index) {
    switch (index) {
      case 0:
        _currBody = HomePage();
        break;
      case 1:
        _currBody = ClassPage();
        break;
      case 2:
        _currBody = BookShelfPage();
        break;
      case 3:
        _currBody = MyPage();
        break;
    }

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    const imgPath = "assets/imgs/";
    const icons = <String>["tab_home","tab_class","tab_book","tab_mine"];

    var items = icons.map((value) => BottomNavigationBarItem(
        label: "",
        icon: Image.asset(imgPath + value + '@2x.png', width: 48,),
        activeIcon: Image.asset(imgPath + value + '_S@2x.png', width: 48,),
    )).toList();

    return Scaffold(
      body: _currBody,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        items: items,
        onTap: (int index) => _ontap(index),
        currentIndex: _currentIndex,
      ),
    );
  }
}