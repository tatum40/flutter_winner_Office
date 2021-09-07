import 'package:flutter/material.dart';
import 'package:flutter_winner_office/pickDate_widget.dart';

// ----------หน้าสมัคร
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff4f4f4),
          title: Text('Sign up', style: TextStyle(fontSize: 16)),
          centerTitle: true,
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
                    DatePickerWidget(
                      labelText: 'Date of birth (DD/MM/YYYY)',
                      pickerType: 'regis',
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
                      child: MaterialButton(
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
        ),
      ),
    );
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
