import 'package:flutter/material.dart';
import 'profileSetting.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(top: 25.0),
          child: Center(
            child: Column(
              children: <Widget>[
                // RaisedButton(onPressed: () {}),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 360,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                              color: Color(0xffffab40),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingPage())),
                              icon: Icon(Icons.settings),
                            ),
                          ),
                        ],
                      )),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffe5e5e5)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            width: 255,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Pajaree Kittisupaluck',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Today',
                                              style: TextStyle(
                                                  color: Color(0xff8f8f8f)),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '40',
                                                    style: TextStyle(
                                                        fontSize: 24)),
                                                TextSpan(
                                                    text: 'min',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                              ],
                                            ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Studied for',
                                              style: TextStyle(
                                                  color: Color(0xff8f8f8f)),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '3',
                                                    style: TextStyle(
                                                        fontSize: 24)),
                                                TextSpan(
                                                    text: 'day',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                              ],
                                            ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Total time',
                                              style: TextStyle(
                                                  color: Color(0xff8f8f8f)),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '2',
                                                    style: TextStyle(
                                                        fontSize: 24)),
                                                TextSpan(
                                                    text: 'h',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                                TextSpan(
                                                    text: '30',
                                                    style: TextStyle(
                                                        fontSize: 24)),
                                                TextSpan(
                                                    text: 'min',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                              ],
                                            ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  margin: EdgeInsets.only(top: 15.0),
                  width: 360,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'จำนวนดาวที่มีอยู่',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Color(0xffffab40),
                          ),
                          Text(
                            '1,223',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.navigate_next),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  margin: EdgeInsets.only(top: 15.0),
                  width: 360,
                  height: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'ความสำเร็จของฉัน',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      successBox(1),
                      successBox(2),
                      successBox(3),
                      successBox(4),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
                  padding: EdgeInsets.all(10.0),
                  width: 360,
                  height: 345,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'บรอนซ์ลีก',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'สิ้นสุดลีก : 4 วัน 16 ชม.',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      leagueBox(1),
                      leagueBox(2),
                      leagueBox(3),
                      leagueBox(4),
                      leagueBox(5),
                      Container(
                        margin: EdgeInsets.only(top: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[Text('ดูทั้งหมด')],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget successBox(num) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffc4c4c4),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(num == 1
                    ? 'นักล่าดาว'
                    : num == 2
                        ? 'ผู้กล้าหาญ'
                        : num == 3
                            ? 'ราชาแบบฝึกหัด'
                            : 'ราชาการพูด'),
                Text(num == 1
                    ? 'รับดาว 500 ดวง'
                    : num == 2
                        ? 'เข้าเรียนติดต่อกัน 10 วัน'
                        : num == 3
                            ? 'ทำแบบฝึกหัดจำนวน 20 ครั้ง'
                            : 'สำเร็จโหมดการพูดจำนวน 10 ตอน'),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 235,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0xffe5e5e5)),
                    ),
                    Positioned(
                      child: Container(
                        width: num == 1
                            ? 70
                            : num == 2
                                ? 124
                                : num == 3
                                    ? 65
                                    : 60,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Color(0xff8f8f8f)),
                      ),
                      left: 0.0,
                      top: 0.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 3.0, left: 5.0),
              child: Text(
                num == 1
                    ? '1K/5K'
                    : num == 2
                        ? '5/10'
                        : num == 3
                            ? '4/20'
                            : '2/10',
                style: TextStyle(fontSize: 10),
              ))
        ],
      ),
    );
  }

  Widget leagueBox(num) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 30,
                    child: num < 4
                        ? Icon(
                            Icons.emoji_events,
                            color: Color(0xffc4c4c4),
                          )
                        : num == 4
                            ? Text(
                                '4',
                                textAlign: TextAlign.center,
                              )
                            : Text(
                                '5',
                                textAlign: TextAlign.center,
                              ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffe5e5e5)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Name',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffffab40),
                      size: 16,
                    ),
                  ),
                  Container(
                    child: Text(
                      num == 1
                          ? '23'
                          : num == 2
                              ? '21'
                              : num == 3
                                  ? '20'
                                  : num == 4
                                      ? '18'
                                      : '17',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 1.0),
          color: Color(0xffe4e4e4),
        )
      ],
    );
  }
}


