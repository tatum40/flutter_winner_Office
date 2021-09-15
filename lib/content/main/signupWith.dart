import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../login.dart';
import 'register.dart';

// --------หน้าตัวเลือกการสมัคร
class SignupWith extends StatelessWidget {
  const SignupWith({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: MaterialButton(
                  onPressed: () => Navigator.push(context,
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
                                    builder: (context) =>
                                        MyHomePage(title: ''))),
                          style: TextStyle(
                              color: Color(0xff01579b), fontSize: 16)),
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
                        child: MaterialButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signupfacebook())),
                          child: Image.asset('assets/images/facebook.png',
                              fit: BoxFit.fitHeight),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                    Container(
                        width: 60,
                        height: 60,
                        child: MaterialButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () => showDialog<String>(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              actions: <Widget>[
                                Center(
                                    child: Container(
                                  width: 290,
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10.0),
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey),
                                      ),
                                      Text('Choose an account',
                                          style: TextStyle(fontSize: 18)),
                                      Text(
                                        'to continue to WinnerOffice',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 30.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Austin  kk'),
                                                  Text(
                                                    'austin@gmail.com',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '─────────────────────────',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Austin  kk'),
                                                  Text(
                                                    'austin@gmail.com',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '─────────────────────────',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.person_add_alt,
                                              color: Colors.grey,
                                              size: 30,
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(left: 15.0),
                                              child:
                                                  Text('Add another account'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '─────────────────────────',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10.0),
                                        child: RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                            style: TextStyle(
                                                fontSize: 12, height: 1.5),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'To continue, Google will share your name,email address and profile picture withWinnerOffice. Before using this app, review its ',
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                              TextSpan(
                                                  text: 'privacy policy',
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () => () {},
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff01579b))),
                                              TextSpan(
                                                  text: ' and ',
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                              TextSpan(
                                                  text: 'terms of service',
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () => () {},
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff01579b))),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
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
      ),
    );
  }
}

class Signupfacebook extends StatelessWidget {
  const Signupfacebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff4f4f4),
        title: Text('Sign up', style: TextStyle(fontSize: 16)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 50,
                color: Color(0xff3b5998),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'facebook.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 60.0, bottom: 10.0),
              width: 80,
              height: 80,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            Text('เข้าสู่ระบบบัญชี Facebook ของคุณ',
                style: TextStyle(fontSize: 14, color: Color(0xff757575))),
            Text(
              'เพื่อเชื่อมต่อกับ WinnerOffice',
              style: TextStyle(fontSize: 14, color: Color(0xff757575)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0))),
                        hintText: 'หมายเลขโทรศัพท์มือถือหรืออีเมล',
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0))),
                        hintText: 'รหัสผ่าน Facebook',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    width: 320,
                    height: 45,
                    child: MaterialButton(
                      onPressed: () => () {},
                      child: Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xff2e65d8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
