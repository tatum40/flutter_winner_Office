import 'package:flutter/material.dart';
import 'profileSetting.dart';
import 'package:percent_indicator/percent_indicator.dart';

List successDataBox = [
  {"title": "นักล่าดาว", "description": "รับดาว 5000 ดวง", "total": 1},
  {
    "title": "นักล่าดาว",
    "description": "เข้าเรียนติดต่อกัน 10 วัน",
    "total": 5
  },
  {
    "title": "ราชาแบบฝึกหัด",
    "description": "ทำแบบฝึกหัดจำนวน 20 ครั้ง",
    "total": 4
  },
  {
    "title": "ราชาการพูด",
    "description": "สำเร็จโหมดการพูดจำนวน 10 ตอน",
    "total": 2
  },
];

List leagueDataBox = [
  {"name": "Jane", "star": 23, "rang": 1},
  {"name": "Tom", "star": 21, "rang": 2},
  {"name": "Bow", "star": 20, "rang": 3},
  {"name": "Bob", "star": 18, "rang": 4},
  {"name": "Fabin", "star": 17, "rang": 5},
];

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
                // MaterialButton(onPressed: () {}),
                headerBox(context),
                allStar(),
                successBox(),
                leagueBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget headerBox(context) {
    Widget settingicon() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                color: Color(0xffffab40),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingPage(),
                  ),
                ),
                icon: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      );
    }

    Widget imageProfile() {
      return Container(
        width: 70,
        height: 70,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xffe5e5e5)),
      );
    }

    Widget dataProfile() {
      return Container(
        margin: EdgeInsets.only(left: 10.0),
        width: MediaQuery.of(context).size.width * 0.67,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Pajaree Kittisupaluck',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Today',
                          style: TextStyle(color: Color(0xff8f8f8f)),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '40', style: TextStyle(fontSize: 24)),
                              TextSpan(
                                  text: 'min', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Studied for',
                          style: TextStyle(color: Color(0xff8f8f8f)),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '3', style: TextStyle(fontSize: 24)),
                              TextSpan(
                                  text: 'day', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Total time',
                          style: TextStyle(color: Color(0xff8f8f8f)),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '2', style: TextStyle(fontSize: 24)),
                              TextSpan(
                                  text: 'h', style: TextStyle(fontSize: 12)),
                              TextSpan(
                                  text: '30', style: TextStyle(fontSize: 24)),
                              TextSpan(
                                  text: 'min', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Container(
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
          settingicon(),
          Row(
            children: <Widget>[
              imageProfile(),
              dataProfile(),
            ],
          ),
        ],
      ),
    );
  }

  Widget allStar() {
    return Container(
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
    );
  }

  Widget successBox() {
    return Container(
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
          for (var i = 0; i < successDataBox.length; i++)
            Container(
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
                        Text(successDataBox[i]['title']),
                        Text(successDataBox[i]['description']),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: LinearPercentIndicator(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 235,
                            lineHeight: 10.0,
                            percent: successDataBox[i]['total'] / 10,
                            backgroundColor: Color(0xffE5E5E5),
                            progressColor: Color(0xff8F8F8F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 3.0, left: 5.0),
                    child: Text(
                      i == 0
                          ? '1K/5K'
                          : i == 1
                              ? '5/10'
                              : i == 2
                                  ? '4/20'
                                  : '2/10',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget leagueBox() {
    return Container(
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
          for (var i = 0; i < leagueDataBox.length; i++)
            Column(
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
                            child: leagueDataBox[i]['rang'] < 4
                                ? Icon(
                                    Icons.emoji_events,
                                    color: Color(0xffc4c4c4),
                                  )
                                : leagueDataBox[i]['rang'] == 4
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
                              shape: BoxShape.circle,
                              color: Color(0xffe5e5e5),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Text(
                              leagueDataBox[i]['name'],
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
                              leagueDataBox[i]['star'].toString(),
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
            ),
          Container(
            margin: EdgeInsets.only(top: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('ดูทั้งหมด')],
            ),
          )
        ],
      ),
    );
  }
}
