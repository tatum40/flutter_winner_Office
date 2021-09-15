import 'package:flutter/material.dart';
import '../home/homeMenu.dart';
import '../category/categoryMenu.dart';
import '../profile/profileMenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentItem = 0;
  final _tabSelection = [
    HomeMenu(),
    CategoryMenu(),
    ProfileMenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // Bottom Menu Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentItem,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentItem = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: _tabSelection[_currentItem],
    ));
  }
}
