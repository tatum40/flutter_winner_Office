import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/main/home.dart';
import 'package:flutter_winner_office/theme/color.dart';

class UserForm extends StatelessWidget {
  const UserForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Container(
            margin: EdgeInsets.only(bottom: 35.0),
            width: 320,
            height: 45,
            child: MaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(googleAccountData: null),
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
          ),
        ],
      ),
    );
  }
}
