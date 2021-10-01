import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/main/forgetPssword.dart';
import 'package:flutter_winner_office/content/main/signupWith.dart';
import 'package:flutter_winner_office/theme/color.dart';

class ForgetPasswordAndSignUp extends StatelessWidget {
  const ForgetPasswordAndSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Column(
      children: <Widget>[
        Container(
          width: 320,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              textToTap('Forgot password?', 1),
              textToTap('Sign up', 2),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
      ],
    );
  }
}
