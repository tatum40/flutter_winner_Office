import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'login.dart';
import 'register.dart';


// --------หน้าตัวเลือกการสมัคร
class SignupWith extends StatelessWidget {
  const SignupWith({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: EdgeInsets.only(bottom: 130.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0, bottom: 35.0),
              width: 320,
              height: 45,
              child: RaisedButton(
                onPressed: () => 
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register())),
                child: Text('Sign up with email'),
                color: Color(0xffffab40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ),
            ),
            Container(
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Log in instead',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage(title: ''))),
                        style:
                            TextStyle(color: Color(0xff01579b), fontSize: 16)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '──────────────  or sign up with  ────────────',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 15.0),
                      width: 60,
                      height: 60,
                      child: RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        child: Image.asset('assets/images/facebook.png',
                            fit: BoxFit.fitHeight),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      )),
                  Container(
                      width: 60,
                      height: 60,
                      child: RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        child: Image.asset('assets/images/google.png',
                            fit: BoxFit.fitHeight),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}