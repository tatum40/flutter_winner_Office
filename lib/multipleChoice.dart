import 'package:flutter/material.dart';
import 'package:flutter_winner_office/message.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  int currentChoice = 1;
  int dataful = 2;

  Widget _msnBox() {
    // ฟังเสียงปกติ
    final listenButton = MaterialButton(
      onPressed: () {},
      child: Icon(
        Icons.volume_up,
        color: Color(0xffffffff),
      ),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(0xff01579b),
    );

    // ฟังเสียงแบบช้า
    final slowButton = MaterialButton(
      onPressed: () {},
      child: Image.asset('assets/images/turtle-w.png'),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(0xff01579b),
    );

    // กล่องข้อความ
    final msnBox = Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        color: Color(0xff01579b),
      ),
      margin: EdgeInsets.only(top: 10.0, left: 5.0),
      padding: EdgeInsets.all(10.0),
      child: Text(
        multiChoice[currentChoice].sentence,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );

    //กล่องตอบ
    final answerBox = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 15.0),
          width: 100,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            color: Color(0xffe0e0e0),
          ),
          child: Row(
            children: <Widget>[Icon(Icons.lens ,size: 15.0,)],
          ),
        ),
      ],
    );

    // icon people
    final iconPeople = Container(
      margin: EdgeInsets.only(top: 10.0, left: 5.0),
      child: Icon(
        Icons.account_circle_outlined,
        size: 35.0,
        color: Color(0xffaaaaaa),
      ),
    );

    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[iconPeople, msnBox],
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
          child: Row(
            children: <Widget>[listenButton, slowButton],
          ),
        ),
        answerBox
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    width: currentChoice * 300 / dataful,
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
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(child: _msnBox()),
            ),
          ],
        ),
      ),
    );
  }
}
