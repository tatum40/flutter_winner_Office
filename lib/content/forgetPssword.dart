import 'package:flutter/material.dart';
import 'login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(child: 
Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xfff4f4f4),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("Forget password",style: TextStyle(fontSize: 16)),
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
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35.0),
              width: 320,
              height: 45,
              child: MaterialButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: const Text(
                        'A new password has been sent to your email.'),
                    actions: <Widget>[
                      Center(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage(title: ''))),
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
    )
    );
    
  }
}
