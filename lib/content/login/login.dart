import 'package:flutter/material.dart';
import 'package:flutter_winner_office/main_widget/SignInFbGoogle.dart';
import 'package:flutter_winner_office/content/login/compunent/skipToTest.dart';
import 'package:flutter_winner_office/content/login/compunent/userForm.dart';
import 'package:flutter_winner_office/content/login/compunent/forgetPsswordAndSignUp.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "sarabun",
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var logoContainer = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
    );

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                logoContainer,
                UserForm(),
                ForgetPasswordAndSignUp(),
                SignInFbGoogle(),
              ],
            ),
          ),
        ),
        floatingActionButton: SkipToTest(),
      ),
    );
  }
}
