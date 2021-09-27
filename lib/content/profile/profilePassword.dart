import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'package:flutter_winner_office/widget/widget_function.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  String defualtPassword = "123456";
  String currentPassword = "";
  String password = "";
  String confirmPassword = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mcl10,
          title: Text('Change password', style: TextStyle(fontSize: 16)),
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
                    Container(
                      width: 320,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) => {
                          setState(() {
                            currentPassword = value.toString();
                          })
                        },
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              currentPassword != defualtPassword) {
                            return 'Incorrect password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            labelText: "Current password"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'New password',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
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
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          labelText: 'Confirm password',
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              confirmPassword != password) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        onChanged: (value) => {
                          setState(() {
                            confirmPassword = value.toString();
                          })
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            dialogNotify(
                                context, "Password was successfully changed");
                          }
                        },
                        child: Text('Save'),
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
          ),
        ),
      ),
    );
  }

  Widget passwordRules(String password) {
    if (password != "" && password.length < 8) {
      return Container(
        margin: EdgeInsets.only(left: 25.0, top: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: mcl14,
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
                  color: mcl14,
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
                  color: mcl14,
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
