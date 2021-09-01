import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  _SpeakingState createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
   int _currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(child: Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xfff4f4f4),
          leading: IconButton(
            padding: EdgeInsets.all(0.0),
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          iconTheme: IconThemeData(
            color: Color(0xff01579b), //change your color here
          ),
          title: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Color(0xffE0E0E0)),
                ),
                Positioned(
                  child: Container(
                    width: 100,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Color(0xff90a4ae)),
                  ),
                )
              ],
            ),
          ),
      ),
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
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              blueBox(),
              whitebox()
            ],
          ),
        ),
      ),
    ),);
    
  }

  Widget blueBox() {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // RaisedButton(onPressed: () {}),
              Container(
                width: 30,
                margin: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xffaaaaaa),
                  size: 35,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 270,
                height: 74,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Color(0xff01579b)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'What time do you normally get up?',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        'ปกติคุณตื่นนอนกี่โมง',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                ),
                Container(
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.volume_up,
                      color: Colors.white,
                    ),
                    shape: CircleBorder(),
                    color: Color(0xff01579b),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/turtle-w.png',
                        fit: BoxFit.contain),
                    shape: CircleBorder(),
                    color: Color(0xff01579b),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget whitebox() {
    return Container(
      margin: EdgeInsets.only(top: 15.0, right: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[              
              Container(
                padding: EdgeInsets.all(10.0),
                width: 270,
                height: 74,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Color(0xffe0e0e0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'What time do you normally get up?',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        'ปกติคุณตื่นนอนกี่โมง',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0 , right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.volume_up,
                      color: Color(0xff01579b),
                    ),
                    shape: CircleBorder(),
                    color: Color(0xffe0e0e0),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/turtle-b.png',
                        fit: BoxFit.contain),
                    shape: CircleBorder(),
                    color: Color(0xffe0e0e0),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
