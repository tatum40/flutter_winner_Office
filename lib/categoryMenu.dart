import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: <Widget>[
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryVocab())),
              child: Container(
                width: 158,
                height: 158,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/vocab.png'),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text('คำศัพท์'))
                  ],
                ),
              ),
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {},
              child: Container(
                width: 158,
                height: 158,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/grammar.png'),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text('สำนวน'))
                  ],
                ),
              ),
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {},
              child: Container(
                width: 158,
                height: 158,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/phonics.png'),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text('การออกเสียง'))
                  ],
                ),
              ),
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {},
              child: Container(
                width: 158,
                height: 158,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/game.png'),
                    Container(
                        margin: EdgeInsets.only(top: 10.0), child: Text('เกม'))
                  ],
                ),
              ),
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {},
              child: Container(
                width: 158,
                height: 158,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffc4c4c4)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text('หัวข้อ'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryVocab extends StatelessWidget {
  const CategoryVocab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 5.0),
                margin: EdgeInsets.only(top: 25.0),
                color: Color(0xffeeeeee),
              ),
              Container(
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                      width: 112,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(child: Text('ชีวิตประจำวัน'))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                      width: 112,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[Container(child: Text('วัยรุ่น'))],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                      width: 112,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[Container(child: Text('Toeic'))],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                      width: 112,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[Container(child: Text('Movie'))],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          '20 คำศัพท์ ในชีวิตประจำวัน',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'คำศัพท์เครื่องใช้ในครัว',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'คำศัพท์แชทภาษาวัยรุ่น',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          '20 คำศัพท์ ไอที',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'คำศัพท์พบบ่อยใน Toeic',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'คำศัพท์จากหนัง Harry Potter',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'คำศัพท์จากวิดีโอเกม',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                width: 350,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          '20 คำศัพท์ อาชีพนักแสดง',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
