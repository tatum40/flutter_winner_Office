import 'package:flutter/material.dart';
import '../home/homeMenu.dart';
import '../category/categoryMenu.dart';
import '../profile/profileMenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.googleAccountData}) : super(key: key);

  final googleAccountData;

  @override
  _HomeState createState() => new _HomeState(googleAccountData);
}

class _HomeState extends State<Home> {
  _HomeState(this.googleAccountData);
  final googleAccountData;

  PageController _pageController = PageController();

  int selectIndex = 0;

  List<Widget> _tabSelection = [
    HomeMenu(),
    CategoryMenu(),
    ProfileMenu(test: null)
  ];

  void _onPageChange(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void _onItemTap(int selectIndex) {
    _pageController.jumpToPage(selectIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // Bottom Menu Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        onTap: _onItemTap,
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
      body: PageView(
        controller: _pageController,
        children: _tabSelection,
        onPageChanged: _onPageChange,
        physics: NeverScrollableScrollPhysics(),
      ),
    ));
  }
}
