import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/main/signUpFacebook.dart';
import 'package:flutter_winner_office/main_widget/SigninGoogle_widget.dart';

class SignInFbGoogle extends StatelessWidget {
  const SignInFbGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 240,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          signInFacebook(context),
          SignInGoogle()
        ],
      ),
    );
  }
  
  Widget signInFacebook(context) {
      return Container(
        width: 60,
        height: 60,
        child: MaterialButton(
          padding: EdgeInsets.all(0.0),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpFacebook())),
          child: Image.asset('assets/images/facebook.png',
              fit: BoxFit.fitHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
      );
    }
}