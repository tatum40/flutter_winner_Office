import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
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
  {
    "name": "Jane",
    "star": 23,
    "rang": 1,
    "url": "https://freepngimg.com/thumb/girls/41-woman-girl-png-image.png"
  },
  {
    "name": "Tom",
    "star": 21,
    "rang": 2,
    "url":
        "https://freepngimg.com/thumb/allu_arjun/29723-7-allu-arjun-transparent.png"
  },
  {
    "name": "Bow",
    "star": 20,
    "rang": 3,
    "url": "https://freepngimg.com/thumb/girls/1-woman-girl-png-image.png"
  },
  {
    "name": "Bob",
    "star": 18,
    "rang": 4,
    "url": "https://freepngimg.com/thumb/allu_arjun/29714-2-allu-arjun-file.png"
  },
  {
    "name": "Fabin",
    "star": 17,
    "rang": 5,
    "url": "https://freepngimg.com/thumb/man/28-man-png-image.png"
  },
  {
    "name": "Mona",
    "star": 15,
    "rang": 6,
    "url":
        "https://freepngimg.com/thumb/emma_roberts/20211-6-emma-roberts-photos.png"
  },
  {
    "name": "Rafh",
    "star": 15,
    "rang": 7,
    "url":
        "https://freepngimg.com/thumb/johnny_depp/33719-3-johnny-depp-transparent-background.png"
  },
  {
    "name": "Oven",
    "star": 13,
    "rang": 8,
    "url":
        "https://freepngimg.com/thumb/samuel_l_jackson/33346-7-samuel-l-jackson-clipart.png"
  },
  {
    "name": "Hally",
    "star": 10,
    "rang": 9,
    "url":
        "https://freepngimg.com/thumb/emily_rudd/35324-2-emily-rudd-transparent-image.png"
  },
  {
    "name": "Emma",
    "star": 8,
    "rang": 10,
    "url":
        "https://freepngimg.com/thumb/emma_stone/20126-2-emma-stone-transparent-picture.png"
  },
];

bool isVisible = true;

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({Key? key, required this.test}) : super(key: key);

  final test;

  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  File? image;

  void initState() {
    super.initState();
    print(widget.test);
  }

  navigatorImage(BuildContext context) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingPage(),
      ),
    );
    setState(() {
      image = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mcl22,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(top: 25.0),
          child: Center(
            child: Column(
              children: <Widget>[
                headerBox(context),
                allStar(),
                successBox(context),
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
                color: mcl1,
                onPressed: () => navigatorImage(context),
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
        child: image != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.file(
                  image!,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset("assets/images/icontest.png"),
        decoration: BoxDecoration(shape: BoxShape.circle, color: mcl23),
      );
    }

    Widget dataProfile() {
      return Container(
        margin: EdgeInsets.only(left: 10.0),
        width: MediaQuery.of(context).size.width * 0.63,
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
                          style: TextStyle(color: mcl24),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: '40',
                                style: TextStyle(fontSize: 24),
                              ),
                              TextSpan(
                                text: 'min',
                                style: TextStyle(fontSize: 12),
                              ),
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
                          style: TextStyle(color: mcl24),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: '3',
                                style: TextStyle(fontSize: 24),
                              ),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(fontSize: 12),
                              ),
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
                          style: TextStyle(color: mcl24),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: '2',
                                style: TextStyle(fontSize: 24),
                              ),
                              TextSpan(
                                text: 'h',
                                style: TextStyle(fontSize: 12),
                              ),
                              TextSpan(
                                text: '30',
                                style: TextStyle(fontSize: 24),
                              ),
                              TextSpan(
                                text: 'min',
                                style: TextStyle(fontSize: 12),
                              ),
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
                color: mcl1,
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

  Widget successBox(context) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: mcl6,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
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
                            width: MediaQuery.of(context).size.width * 0.63,
                            lineHeight: 10.0,
                            percent: successDataBox[i]['total'] / 10,
                            backgroundColor: mcl23,
                            progressColor: mcl24,
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
            Visibility(
              visible: isVisible
                  ? leagueDataBox[i]['rang'] < 6
                  : leagueDataBox[i]['rang'] > 0,
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, right: 5.0),
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
                                        color: mcl6,
                                      )
                                    : Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: Text(leagueDataBox[i]['rang']
                                            .toString()),
                                      )),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              width: 30,
                              height: 30,
                              child: Image.network(
                                  leagueDataBox[i]['url'].toString()),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: mcl23,
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
                        Container(
                          width: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: mcl1,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 1.0),
                    color: mcl25,
                  )
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.only(top: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Text(isVisible ? 'ดูทั้งหมด' : 'ย่อส่วนขยาย'),
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
