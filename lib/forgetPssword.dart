import 'package:flutter/material.dart';
import 'login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25.0),
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              height: 50,
              color: Color(0xfff4f4f4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Forget password',
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: 50,
                    child: FlatButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () => 
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MyHomePage(title: 'Flutter Demo'))),
                      child: Icon(Icons.close),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35.0),
              width: 320,
              height: 45,
              child: RaisedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: const Text('A new password has been sent to your email.'),
                    actions: <Widget>[
                      Center(
                        child: FlatButton(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () => 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: ''))),
                        child: const Text('OK'),
                        color: Color(0xffffab40),
                      ),
                      )
                      
                    ],
                  ),
                ),
                child: Text('Reset password'),
                color: Color(0xffffab40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
