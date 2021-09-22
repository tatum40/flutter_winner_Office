import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_winner_office/Notifytest.dart';
import 'package:flutter_winner_office/theme/color.dart';
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                userPasswordForm(),
                loginBtn(),
                forgetAndSignBtn(),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '────────────  or sign in with  ───────────',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                faceBookGoogleBtn(),
              ],
            ),
          ),
        ),
        floatingActionButton: floatingBtn(),
      ),
    );
  }

  Widget userPasswordForm() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0, bottom: 15.0),
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
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
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                hintText: 'Password',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget forgetAndSignBtn() {
    Widget textToTap(msn, index) {
      return RichText(
        text: TextSpan(
          text: '$msn',
          recognizer: TapGestureRecognizer()
            ..onTap = () => {
                  if (index == 1)
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                        ),
                      ),
                    }
                  else
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupWith(),
                        ),
                      ),
                    }
                },
          style: TextStyle(color: mcl2, fontSize: 16),
        ),
      );
    }

    return Container(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          textToTap('Forgot password?', 1),
          textToTap('Sign up', 2),
        ],
      ),
    );
  }

  Widget floatingBtn() {
    return Container(
      width: 80,
      height: 35,
      child: MaterialButton(
        color: Colors.white,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotifyTest(),
          ),
        ),
        child: Text(
          'Skip',
          style: TextStyle(
            color: mcl1,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: mcl1, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Widget loginBtn() {
    return Container(
      margin: EdgeInsets.only(bottom: 35.0),
      width: 320,
      height: 45,
      child: MaterialButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        ),
        child: Text('Log in'),
        color: mcl1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }

  Widget faceBookGoogleBtn() {
    Widget socialBtn(socialName) {
      return Container(
        width: 60,
        height: 60,
        child: MaterialButton(
          padding: EdgeInsets.all(0.0),
          onPressed: () {},
          child: Image.asset('assets/images/$socialName.png',
              fit: BoxFit.fitHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 240,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          socialBtn('facebook'),
          socialBtn('google'),
        ],
      ),
    );
  }
}
