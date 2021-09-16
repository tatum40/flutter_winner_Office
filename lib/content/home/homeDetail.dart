import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../main/home.dart';
import 'homeLesson.dart';

List detailData = [
  {
    "titleEng": "What’s your name?",
    "titleTh": "คุณชื่ออะไร",
    "url": "assets/images/imageM1.png",
    "isLock": false
  },
  {
    "titleEng": "Where are you from?",
    "titleTh": "คุณมาจากไหน",
    "url": "assets/images/imageM2.png",
    "isLock": false
  },
  {
    "titleEng": "How old are you",
    "titleTh": "คุณอายุเท่าไหร่",
    "url": "assets/images/imageM3.png",
    "isLock": true
  },
  {
    "titleEng": "Do you have any brothers \nor sisters?",
    "titleTh": "คุณมีพี่ชายหรือพี่สาวไหม",
    "url": "assets/images/imageM4.png",
    "isLock": true
  },
  {
    "titleEng": "Which school do you go to?",
    "titleTh": "คุณเรียนที่โรงเรียนไหน",
    "url": "assets/images/imageM5.png",
    "isLock": true
  },
];

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key}) : super(key: key);

  void dialogUnlock(context) {
    showDialog<String>(
      barrierDismissible: false,
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
                child: MaterialButton(
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
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
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
    Widget _underLine() {
      return Container(
        padding: EdgeInsets.only(top: 2.0),
        color: Color(0xffc4c4c4),
      );
    }

    Widget _buyCourseBtn() {
      return Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        width: 320,
        height: 45,
        child: MaterialButton(
          onPressed: () => {Navigator.pop(context), dialogConfirm(context)},
          child: Text(
            '1 - tap buy',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          color: Color(0xffffab40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
      );
    }

    Widget _requirementText() {
      return Container(
        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        child: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            style:
                TextStyle(fontSize: 12, height: 1.5, color: Color(0xff7a7a7a)),
            children: <TextSpan>[
              TextSpan(
                text:
                    'By tapping ‘1-tap buy’, you accept the following Google Payments Terms of Service: ',
              ),
              TextSpan(
                  text: 'Privacy Notice',
                  recognizer: TapGestureRecognizer()..onTap = () => () {},
                  style: TextStyle(decoration: TextDecoration.underline)),
              TextSpan(text: ' , '),
              TextSpan(
                  text: 'ข้อกำหนดในการบริการ - Android (ประเทศไทย).',
                  recognizer: TapGestureRecognizer()..onTap = () => () {},
                  style: TextStyle(decoration: TextDecoration.underline)),
              TextSpan(text: ' More '),
            ],
          ),
        ),
      );
    }

    Widget _lessonAndPrice() {
      return Container(
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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
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
      );
    }

    Widget _creditCard() {
      return Container(
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
                    border: Border.all(color: Color(0xffc4c4c4), width: 2),
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
      );
    }

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
              _underLine(),

              _lessonAndPrice(), //แบบฝึกหัดที่เลือกและราคา

              _underLine(),

              _creditCard(), //บัตรเครดิต

              _underLine(),

              _requirementText(), //ข้อกำหนดและบริการ

              _buyCourseBtn(), // ปุ่มยืนยันการซื้อ

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
      barrierDismissible: false,
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
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 5.0),
                  color: Color(0xffeeeeee),
                ),
                // header
                headerBox(context),
                // body
                for (var i = 0; i < detailData.length; i++)
                  detailBox(context, detailData[i]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget headerBox(context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  ),
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
    );
  }

  Widget detailBox(context, detail) {

    Widget _micAndGridBtn() {

      Widget button(iconName, type) {
        return Material(
          type: MaterialType.transparency,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff90a4ae), width: 2.0),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(1000.0),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  iconName,
                  size: 20.0,
                  color: Color(0xff90a4ae),
                ),
              ),
            ),
          ),
        );
      }

      return Container(
        padding: EdgeInsets.only(top: 7.0),
        child: Row(
          children: <Widget>[
            Container(
              child: button(Icons.mic, 'mic'),
            ),
            Container(
                padding: EdgeInsets.only(left: 10.0),
                child: button(Icons.grid_view, 'grid')),
          ],
        ),
      );
    }

    Widget _nextOrBuyBtn(detail, context) {

      return Container(
        padding: EdgeInsets.only(right: 10.0),
        child: Material(
          type: MaterialType.transparency,
          child: Ink(
            decoration: BoxDecoration(
              border: detail['isLock'] == false
                  ? Border.all(color: Color(0xff01579b), width: 2.0)
                  : Border.all(color: Color(0xff90a4ae), width: 2.0),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(1000.0),
              onTap: () {
                if (detail['isLock'] == true) {
                  dialogUnlock(context);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeLesson(
                        titleEng: detail['titleEng'],
                        titleTh: detail['titleTh'],
                      ),
                    ),
                  );
                }
              },
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: detail['isLock'] == false
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
      );
    }

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
                    Image.asset(detail['url']),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            detail['titleEng'],
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            detail['titleTh'],
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          _micAndGridBtn(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _nextOrBuyBtn(detail, context)
            ],
          ),
        )
      ],
    );
  }
}
