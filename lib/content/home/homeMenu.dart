import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'homeDetail.dart';

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
              // search
              search(),
              //scroll Row
              horizontalScroll(),
              underLine(),
              // -------------------เริ่มต้น------------------------
              for (var i = 0; i < lessonData.length; i++)
                Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(lessonData[i]['titleTh']),
                                    Text(lessonData[i]['titleEng'])
                                  ],
                                ),
                              ),
                              Container(
                                child: MaterialButton(
                                  color: mcl1,
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeDetail(),
                                    ),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'More',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(
                                          lessonData[i]['url1']),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(lessonData[i]['detailTh1']),
                                          Text(lessonData[i]['detailEng1'])
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(
                                           lessonData[i]['url2']),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                           Text(lessonData[i]['detailTh2']),
                                          Text(lessonData[i]['detailEng2'])
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    underLine(),
                  ],
                ),
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

  Widget search() {
    return Container(
      margin: EdgeInsets.only(top: 35.0, bottom: 15.0),
      width: 340,
      child: TextField(
        decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            hintText: 'Search here....',
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            )),
      ),
    );
  }

  Widget horizontalScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          for (var i = 0; i < 4; i++)
            Container(
              margin: EdgeInsets.all(10.0),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: mcl6,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
        ],
      ),
    );
  }
}
