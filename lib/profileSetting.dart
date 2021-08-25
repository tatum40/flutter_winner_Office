import 'package:flutter/material.dart';
import 'package:flutter_winner_office/login.dart';
import 'package:flutter_winner_office/profileCamera.dart';
import 'package:flutter_winner_office/profileContact.dart';
import 'package:flutter_winner_office/profileInformation.dart';
import 'package:flutter_winner_office/profilePassword.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Stack(
              children: <Widget>[
                Container(
                  width: 122,
                  height: 122,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffe5e5e5)),
                ),
                Positioned(
                    left: 80.0,
                    top: 80.0,
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffffab40)),
                        child: Center(
                          child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Camera())),
                            child: Icon(Icons.photo_camera,
                                size: 24, color: Colors.white),
                          ),
                        )))
              ],
            ),
            // --------------- Personal information ------------
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Information())),
              child: Container(
                height: 40.0,
                margin: EdgeInsets.only(top: 30.0, left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.face,
                            color: Color(0xffff8c8c),
                            size: 22,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Personal Information',
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
            // --------------- Credit account ------------
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 10.0, left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.account_balance_wallet,
                          color: Color(0xffffd056),
                          size: 22,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Credit account',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.only(top: 1.0),
              color: Color(0xffe4e4e4),
            ),
            // --------------- Change password ------------
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword())),
              child: Container(
                height: 40.0,
                margin: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.lock,
                            color: Color(0xff87d6e8),
                            size: 22,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Change password',
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
            // --------------- Terms and Conditions ------------
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 10.0, left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.gavel,
                          color: Color(0xff8bde76),
                          size: 22,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Terms and Conditions',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.only(top: 1.0),
              color: Color(0xffe4e4e4),
            ),
            // --------------- Contact us ------------
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs())),
              child: Container(
                height: 40.0,
                margin: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.contact_support,
                            color: Color(0xffb880ff),
                            size: 22,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Contact us',
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
            // --------------- Log out ------------
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login())),
              child: Container(
                height: 40.0,
                margin: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.logout,
                            color: Color(0xffff0000),
                            size: 22,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffff0000)),
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
        ),
      )),
    );
  }
}
