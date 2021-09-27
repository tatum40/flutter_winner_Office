import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/main/login.dart';
import 'package:flutter_winner_office/theme/color.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  void _dialogCompleted(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('A new password has been sent to your email.'),
        actions: <Widget>[
          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              onPressed: () => {
                Navigator.pop(context),
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Login()), (Route<dynamic> route) => false)
              },
              child: const Text('OK'),
              color: mcl1,
            ),
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: mcl10,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: Text("Forget password", style: TextStyle(fontSize: 16)),
            centerTitle: true,
            actions: [
              // action button
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
            leading: Container()
            // IconButton(
            //   icon: Image.asset('assets/images/google.png'),
            //   onPressed: () {},
            // ),
            ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 35.0),
                width: 320,
                height: 45,
                child: MaterialButton(
                  onPressed: () => _dialogCompleted(context),
                  child: Text('Reset password'),
                  color: mcl1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
