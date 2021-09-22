import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

List horizontailScroll = [
  'ชีวิตประจำวัน',
  'วัยรุ่น',
  'Toeic',
  'Movie',
];

List verticalScroll = [
  '20 คำศัพท์ ในชีวิตประจำวัน',
  'คำศัพท์เครื่องใช้ในครัว',
  'คำศัพท์แชทภาษาวัยรุ่น',
  '20 คำศัพท์ ไอที',
  'คำศัพท์พบบ่อยใน Toeic',
  'คำศัพท์จากหนัง Harry Potter',
  'คำศัพท์จากวิดีโอเกม',
  '20 คำศัพท์ อาชีพนักแสดง',
];

class CategoryVocab extends StatelessWidget {
  const CategoryVocab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mcl17,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                headerBox(context),
                horizontailScroller(),
                for (var i = 0; i < verticalScroll.length; i++)
                  verticalScroller(verticalScroll[i]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget headerBox(context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back)),
          Container(
            padding: EdgeInsets.only(top: 25.0),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'ระดับเริ่มต้น',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Beginner',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget horizontailScroller() {
    Widget horizonBox() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            for (var i = 0; i < horizontailScroll.length; i++)
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 112,
                height: 40,
                child: MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(child: Text(horizontailScroll[i]))
                    ],
                  ),
                ),
              ),
          ],
        ),
      );
    }

    return horizonBox();
  }

  Widget verticalScroller(dataText) {
    Widget verticalBox() {
      return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
        width: 350,
        height: 60,
        child: MaterialButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(
                  dataText,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      );
    }

    return verticalBox();
  }
}
