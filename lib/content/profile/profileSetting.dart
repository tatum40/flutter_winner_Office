import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/main/login.dart';
import 'package:flutter_winner_office/content/profile/profileCamera.dart';
import 'package:flutter_winner_office/content/profile/profileContact.dart';
import 'package:flutter_winner_office/content/profile/profileCredit.dart';
import 'package:flutter_winner_office/content/profile/profileInformation.dart';
import 'package:flutter_winner_office/content/profile/profilePassword.dart';
import 'package:flutter_winner_office/theme/color.dart';

List menuList = [
  {"icon": Icons.face, "color": mcl28, "message": "Personal Information"},
  {
    "icon": Icons.account_balance_wallet,
    "color": mcl32,
    "message": "Credit account"
  },
  {"icon": Icons.lock, "color": mcl33, "message": "Change password"},
  {"icon": Icons.gavel, "color": mcl34, "message": "Terms and Conditions"},
  {"icon": Icons.contact_support, "color": mcl35, "message": "Contact us"},
  {"icon": Icons.logout, "color": mcl36, "message": "Logout"},
];

class SettingPage extends StatefulWidget {
  const SettingPage({
    Key? key,
  }) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  File? image;

  navigatorImage(BuildContext context) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Camera(),
      ),
    );
    setState(() {
      image = result;
    });
  }

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
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => Login()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            padding: EdgeInsets.all(0.0),
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, image),
          ),
          backgroundColor: mcl10,
          title: Text('Setting', style: TextStyle(fontSize: 16)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 30.0),
              child: Column(
                children: <Widget>[
                  contentCamera(context),
                  for (var i = 0; i < menuList.length; i++) menuBox(context, i),
                ],
              ),
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
          child: image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ),
                )
              : null,
          width: 122,
          height: 122,
          decoration: BoxDecoration(shape: BoxShape.circle, color: mcl23),
        ),
        Positioned(
          left: 80.0,
          top: 80.0,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(shape: BoxShape.circle, color: mcl1),
            child: Center(
              child: MaterialButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () => navigatorImage(context),
                child: Icon(Icons.photo_camera, size: 24, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget menuBox(context, i) {
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
                        color: menuList[i]['color'],
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
          color: mcl25,
        ),
      ],
    );
  }
}
