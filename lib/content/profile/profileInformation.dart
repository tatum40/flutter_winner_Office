import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

// ----------หน้าสมัคร
class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
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
          backgroundColor: mcl10,
          title: Text('Edit profile', style: TextStyle(fontSize: 16)),
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
                                      onChanged: (value) => _setGender(
                                        value.toString(),
                                      ),
                                    ),
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
                                          _setGender(value.toString()),
                                    ),
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
                                          _setGender(value.toString()),
                                    ),
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
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
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
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
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
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          hintText: 'Date of birth (DD/MM/YYYY)',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid email';
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
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 320,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
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
}
