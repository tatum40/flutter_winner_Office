import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/home.dart';
import 'package:flutter/gestures.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 35.0, bottom: 15.0),
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      hintText: 'Search here....',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      )),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5.0),
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xffeeeeee),
              ),
              // -------------------เริ่มต้น------------------------
              Container(
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
                              Text('ระดับเริ่มต้น'),
                              Text('Beginner')
                            ],
                          ),
                        ),
                        Container(
                            child: RaisedButton(
                          color: Color(0xffffab40),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeDetail())),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image1.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('คุณชื่ออะไร'),
                                    Text("what's your name?")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image2.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('คุณมาจากไหน'),
                                    Text('Where are you from?')
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
              Container(
                padding: EdgeInsets.only(top: 5.0),
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xffeeeeee),
              ),
              // --------------------- กลาง ----------------------
              Container(
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
                              Text('ระดับกลาง'),
                              Text('Intermediate')
                            ],
                          ),
                        ),
                        Container(
                            child: RaisedButton(
                          color: Color(0xffffab40),
                          onPressed: () {},
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image3.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('คุณชื่ออะไร'),
                                    Text("what's your name?")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image4.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('คุณมาจากไหน'),
                                    Text('Where are you from?')
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
              Container(
                padding: EdgeInsets.only(top: 5.0),
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xffeeeeee),
              ),
              // ----------------------- สูง -------------------------
              Container(
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
                              Text('ระดับสูง'),
                              Text('Advanced')
                            ],
                          ),
                        ),
                        Container(
                            child: RaisedButton(
                          color: Color(0xffffab40),
                          onPressed: () {},
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image1.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('คุณชื่ออะไร'),
                                    Text("what's your name?")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image2.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('คุณมาจากไหน'),
                                    Text('Where are you from?')
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
              Container(
                padding: EdgeInsets.only(top: 5.0),
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xffeeeeee),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key}) : super(key: key);

  void dialogUnlock(context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'Unlock Lesson',
          textAlign: TextAlign.center,
        ),
        content: const Text(
          'Unlock “How old are you?”',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color(0xff01579b),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Color(0xff01579b)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  onPressed: () => {Navigator.pop(context), dialogBuy(context)},
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xffffab40),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void dialogBuy(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
                    child: Text(
                      'Google Play',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 2.0),
                margin: EdgeInsets.only(top: 5.0),
                color: Color(0xffc4c4c4),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0),
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text('Unlock Lesson'),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('THB 29.00', style: TextStyle(fontSize: 18)),
                          Text('notax', style: TextStyle(fontSize: 12))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 2.0),
                color: Color(0xffc4c4c4),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffc4c4c4), width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          child: Image.asset('assets/images/visa.png'),
                        ),
                        Text(
                          'Visa - 0000',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 2.0),
                color: Color(0xffc4c4c4),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: 12, height: 1.5, color: Color(0xff7a7a7a)),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'By tapping ‘1-tap buy’, you accept the following Google Payments Terms of Service: ',
                      ),
                      TextSpan(
                          text: 'Privacy Notice',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => () {},
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                      TextSpan(text: ' , '),
                      TextSpan(
                          text: 'ข้อกำหนดในการบริการ - Android (ประเทศไทย).',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => () {},
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                      TextSpan(text: ' More '),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: 320,
                height: 45,
                child: RaisedButton(
                  onPressed: () =>
                      {Navigator.pop(context), dialogConfirm(context)},
                  child: Text(
                    '1 - tap buy',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  color: Color(0xffffab40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                ),
              ),

              // ListTile(
              //   leading: new Icon(Icons.share),
              //   title: new Text('Share'),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          );
        });
  }

  void dialogConfirm(context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'Thank You',
          textAlign: TextAlign.center,
        ),
        content: const Text(
          'Your purchase was successful.',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Center(
              child: Container(
            margin: EdgeInsets.only(left: 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () => {Navigator.pop(context)},
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.white),
              ),
              color: Color(0xffffab40),
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home())),
                        icon: Icon(Icons.arrow_back)),
                    Container(
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
              // ---------------------
              lessonBox(context, 1),
              lessonBox(context, 2),
              lessonBox(context, 3),
              lessonBox(context, 4),
              lessonBox(context, 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget lessonBox(BuildContext context, num) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 5.0),
          margin: EdgeInsets.only(top: 10.0),
          color: Color(0xffeeeeee),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/imageM$num.png'),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            num == 1
                                ? 'What’s your name?'
                                : num == 2
                                    ? 'Where are you from?'
                                    : num == 3
                                        ? 'How old are you'
                                        : num == 4
                                            ? 'Do you have any brothers \nor sisters?'
                                            : 'Which school do you go to?',
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            num == 1
                                ? 'คุณชื่ออะไร'
                                : num == 2
                                    ? 'คุณมาจากไหน'
                                    : num == 3
                                        ? 'คุณอายุเท่าไหร่'
                                        : num == 4
                                            ? 'คุณมีพี่ชายหรือพี่สาวไหม'
                                            : 'คุณเรียนที่โรงเรียนไหน',
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 7.0),
                                child: Material(
                                    type: MaterialType.transparency,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff90a4ae),
                                            width: 2.0),
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: InkWell(
                                        borderRadius:
                                            BorderRadius.circular(1000.0),
                                        onTap: () {},
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.mic,
                                            size: 20.0,
                                            color: Color(0xff90a4ae),
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 7.0, left: 10.0),
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff90a4ae), width: 2.0),
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: InkWell(
                                      borderRadius:
                                          BorderRadius.circular(1000.0),
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.grid_view,
                                          size: 20.0,
                                          color: Color(0xff90a4ae),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      border: num < 3
                          ? Border.all(color: Color(0xff01579b), width: 2.0)
                          : Border.all(color: Color(0xff90a4ae), width: 2.0),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(1000.0),
                      onTap: () {
                        if (num > 2) {
                          dialogUnlock(context);
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: num < 3
                            ? Icon(
                                Icons.arrow_forward,
                                size: 20.0,
                                color: Color(0xff01579b),
                              )
                            : Icon(
                                Icons.lock,
                                size: 20.0,
                                color: Color(0xff90a4ae),
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Future DialogUnlock(context) async {}
}
