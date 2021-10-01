import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_winner_office/main_widget/SignInFbGoogle.dart';
import 'package:flutter_winner_office/theme/color.dart';
import '../login/login.dart';
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
                signUpEmailBtn(context),
                backToLogin(context),
                SignInFbGoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpEmailBtn(context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0, bottom: 35.0),
      width: 320,
      height: 45,
      child: MaterialButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Register(),
          ),
        ),
        child: Text('Sign up with email'),
        color: mcl1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }

  Widget backToLogin(context) {
    return Column(
      children: <Widget>[
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
                            builder: (context) => MyHomePage(),
                          ),
                        ),
                  style: TextStyle(color: mcl2, fontSize: 16),
                ),
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
      ],
    );
  }
}