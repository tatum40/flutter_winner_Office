import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

class SignUpFacebook extends StatelessWidget {
  const SignUpFacebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mcl10,
          title: Text(
            'Sign up',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                facebookLogoBar(),
                pictureAndMessage(),
                loginForm(),
                loginBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget facebookLogoBar() {
    return Container(
      width: double.infinity,
      height: 50,
      color: mcl15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'facebook.',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget pictureAndMessage() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 60.0, bottom: 10.0),
          width: 80,
          height: 80,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        ),
        Text(
          'เข้าสู่ระบบบัญชี Facebook ของคุณ',
          style: TextStyle(
            fontSize: 14,
            color: mcl11,
          ),
        ),
        Text(
          'เพื่อเชื่อมต่อกับ WinnerOffice',
          style: TextStyle(
            fontSize: 14,
            color: mcl11,
          ),
        ),
      ],
    );
  }

  Widget loginForm() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 70.0),
          width: 320,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
              ),
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
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              hintText: 'รหัสผ่าน Facebook',
            ),
          ),
        ),
      ],
    );
  }

  Widget loginBtn() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 320,
      height: 45,
      child: MaterialButton(
        onPressed: () => () {},
        child: Text(
          'เข้าสู่ระบบ',
          style: TextStyle(color: Colors.white),
        ),
        color: mcl16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
    );
  }
}