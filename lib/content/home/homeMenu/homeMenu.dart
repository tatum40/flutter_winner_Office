import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/home/homeMenu/compunent/bodyContent.dart';
import 'package:flutter_winner_office/content/home/homeMenu/compunent/horizonScroll.dart';
import 'package:flutter_winner_office/content/home/homeMenu/compunent/search.dart';
import 'package:flutter_winner_office/theme/color.dart';

List lessonData = [
  {
    'titleTh': 'ระดับเริ่มต้น',
    'titleEng': 'Beginner',
    'detailTh1': 'คุณชื่อะไร',
    'detailEng1': "what's your name?",
    'detailTh2': 'คุณมาจากไหน',
    'detailEng2': "Where are you from?",
    'url1': 'assets/images/image1.png',
    'url2': 'assets/images/image2.png'
  },
  {
    'titleTh': 'ระดับกลาง',
    'titleEng': 'Intermediate',
    'detailTh1': 'วันธรรมดาที่สำนักงาน',
    'detailEng1': "A typical day at the office",
    'detailTh2': 'งานและบริษัท',
    'detailEng2': "jobs and companies",
    'url1': 'assets/images/image3.png',
    'url2': 'assets/images/image4.png'
  },
  {
    'titleTh': 'ระดับสูง',
    'titleEng': 'Advanced',
    'detailTh1': 'คุณชื่อะไร',
    'detailEng1': "what's your name?",
    'detailTh2': 'คุณมาจากไหน',
    'detailEng2': "Where are you from?",
    'url1': 'assets/images/image1.png',
    'url2': 'assets/images/image2.png'
  },
];

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Search(),
              HorizonScroll(),
              underLine(),
              for (var i = 0; i < lessonData.length; i++)
                BodyContent(i: i , data : lessonData),
            ],
          ),
        ),
      ),
    );
  }
  Widget underLine() {
    return Container(
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(top: 10.0),
      color: mcl17,
    );
  }
}