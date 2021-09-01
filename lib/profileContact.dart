import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact us',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: Color(0xfff4f4f4),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                // --------- mail --------
                Container(
                  height: 40.0,
                  margin: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.mail,
                              color: Color(0xffff8c8c),
                              size: 22,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Email',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'edutech.innovation@gmail.com',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ))
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
                // --------- phon --------
                Container(
                  height: 40.0,
                  margin: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.phone,
                              color: Color(0xff78d1cc),
                              size: 22,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Phone',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '02 963 0123',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ))
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
                // --------- message --------
                Container(
                  height: 40.0,
                  margin: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.message,
                              color: Color(0xff87d981),
                              size: 22,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Message',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 130,
                  padding: EdgeInsets.only(left: 15.0),
                  child: TextFormField(
                    minLines: 6,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: "Type here...",
                        hintStyle:
                            TextStyle(color: Color(0xffc5c5c5), fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(new Radius.circular(5.0))),
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                // ------------------ Send ---------------
                Container(
                  margin: EdgeInsets.only(left: 15.0, top: 15.0),
                  width: 280,
                  height: 35,
                  child: RaisedButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: Text(
                      'Send',
                      style: TextStyle(fontSize: 16),
                    ),
                    color: Color(0xffffab40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
