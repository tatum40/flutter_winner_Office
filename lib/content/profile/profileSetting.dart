import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/login.dart';
import 'package:flutter_winner_office/content/profile/profileCamera.dart';
import 'package:flutter_winner_office/content/profile/profileContact.dart';
import 'package:flutter_winner_office/content/profile/profileCredit.dart';
import 'package:flutter_winner_office/content/profile/profileInformation.dart';
import 'package:flutter_winner_office/content/profile/profilePassword.dart';

List menuList = [
  {"icon": Icons.face, "color": 0xffff8c8c, "message": "Personal Information"},
  {
    "icon": Icons.account_balance_wallet,
    "color": 0xffffd056,
    "message": "Credit account"
  },
  {"icon": Icons.lock, "color": 0xff87d6e8, "message": "Change password"},
  {"icon": Icons.gavel, "color": 0xff8bde76, "message": "Terms and Conditions"},
  {"icon": Icons.contact_support, "color": 0xffb880ff, "message": "Contact us"},
  {"icon": Icons.logout, "color": 0xffff0000, "message": "Logout"},
];

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  void goToMenuFunctionBtn(context, i) {
//Personal Information
    if (i == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Information(),
        ),
      );
    }
    //Credit account
    else if (i == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Credit(),
        ),
      );
    }
    //Change password
    else if (i == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChangePassword(),
        ),
      );
    }
    //Terms and Conditions
    else if (i == 3) {
    }
    //Contact us
    else if (i == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ContactUs(),
        ),
      );
    }
    //Logout
    else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff4f4f4),
          title: Text('Setting', style: TextStyle(fontSize: 16)),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                contentCamera(context),
                for (var i = 0; i < menuList.length; i++) menuBox(context , i),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget contentCamera(context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 122,
          height: 122,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xffe5e5e5)),
        ),
        Positioned(
          left: 80.0,
          top: 80.0,
          child: Container(
            width: 40,
            height: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffffab40)),
            child: Center(
              child: MaterialButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Camera(),
                  ),
                ),
                child: Icon(Icons.photo_camera, size: 24, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget menuBox(context , i) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () => goToMenuFunctionBtn(context, i),
          child: Container(
            height: 40.0,
            margin: EdgeInsets.only(top: i == 0 ? 30.0 : 15.0, left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        menuList[i]['icon'],
                        color: Color(menuList[i]['color']),
                        size: 22,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Text(
                        menuList[i]['message'],
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          padding: EdgeInsets.only(top: 1.0),
          color: Color(0xffe4e4e4),
        ),
      ],
    );
  }
}
