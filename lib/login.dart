import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'forgetPssword.dart';
import 'signupWith.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
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
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0, bottom: 15.0),
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 35.0),
                    width: 320,
                    height: 45,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home())),
                      child: Text('Log in'),
                      color: Color(0xffffab40),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                    ),
                  ),
                  Container(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              text: 'Forgot password?',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPassword())),
                              style: TextStyle(
                                  color: Color(0xff01579b), fontSize: 16)),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Sign up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupWith())),
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
                          '──────────────  or sign in with  ────────────',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
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
      ),
      floatingActionButton: Container(
        width: 80,
        height: 35,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {},
          child: Text('Skip', style: TextStyle(color: Color(0xffffab40))),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Color(0xffffab40), width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    ));
  }
}
