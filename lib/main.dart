import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// -------------------------------------------------------------------หน้า log in
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 15.0),
                      width: 320,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0),
                      width: 320,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 35.0),
                      width: 320,
                      height: 45,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Log in'),
                        color: Color(0xffffab40),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      ),
                    ),
                    Container(
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: 'Forgot password?',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetPassword())),
                                style: TextStyle(
                                    color: Color(0xff01579b), fontSize: 16)),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Sign up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignupWith())),
                                style: TextStyle(
                                    color: Color(0xff01579b), fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '──────────────  or sign in with  ────────────',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 15.0),
                        width: 60,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {},
                          child: Image.asset('assets/images/facebook.png',
                              fit: BoxFit.fitHeight),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                    Container(
                        width: 60,
                        height: 60,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {},
                          child: Image.asset('assets/images/google.png',
                              fit: BoxFit.fitHeight),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
            width: 80,
            height: 35,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {},
              child: Text('Skip', style: TextStyle(color: Color(0xffffab40))),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color(0xffffab40),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
            )));
  }
}

// -------------------------------------------------------------หน้าตัวเลือกการสมัคร
class SignupWith extends StatelessWidget {
  const SignupWith({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: EdgeInsets.only(bottom: 130.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0, bottom: 35.0),
              width: 320,
              height: 45,
              child: RaisedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register())),
                child: Text('Sign up with email'),
                color: Color(0xffffab40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ),
            ),
            Container(
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Log in instead',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage(title: ''))),
                        style:
                            TextStyle(color: Color(0xff01579b), fontSize: 16)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '──────────────  or sign up with  ────────────',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 15.0),
                      width: 60,
                      height: 60,
                      child: RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        child: Image.asset('assets/images/facebook.png',
                            fit: BoxFit.fitHeight),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      )),
                  Container(
                      width: 60,
                      height: 60,
                      child: RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        child: Image.asset('assets/images/google.png',
                            fit: BoxFit.fitHeight),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

// -----------------------------------------------------------------หน้าลืมรหัสผ่าน
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
                      onPressed: () => Navigator.push(
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
              height: 45,
              child: TextField(
                decoration: InputDecoration(
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
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: ''))),
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

// ---------------------------------------------------------------------หน้าสมัคร
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  String password = "";

  String gender = '';
  void _setGender(String value) {
    setState(() {
      gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign up'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    // เพศ
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: Colors.blueAccent,
                                        value: 'Male',
                                        groupValue: gender,
                                        onChanged: (value) =>
                                            _setGender(value.toString())),
                                    Text('Male'),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: Colors.blueAccent,
                                        value: 'Female',
                                        groupValue: gender,
                                        onChanged: (value) =>
                                            _setGender(value.toString())),
                                    Text('Female'),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: Colors.blueAccent,
                                        value: 'Not specified',
                                        groupValue: gender,
                                        onChanged: (value) =>
                                            _setGender(value.toString())),
                                    Text('Not specified'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 320,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid given name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            labelText: "Given name"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid surname';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Surname',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextField(
                        onTap: () {},
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          hintText: 'Date of birth (DD/MM/YYYY)',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Your password must contain:';
                          }
                          return null;
                        },
                        onChanged: (value) => {
                          setState(() {
                            password = value.toString();
                          })
                        },
                        obscureText: true,
                      ),
                    ),
                    passwordRules(password),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Phone',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: Text('Sign up'),
                        color: Color(0xffffab40),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget passwordRules(String password) {
    if (password.length < 8) {
      return Container(
        margin: EdgeInsets.only(left: 25.0, top: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Color(0xff868686),
                  size: 20,
                ),
                Text(
                  '     8-16 characters',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Color(0xff868686),
                  size: 20,
                ),
                Text(
                  '     A lowercase or uppercase letter (a-z; A-Z)',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Color(0xff868686),
                  size: 20,
                ),
                Text(
                  '     A number (0-9)',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
