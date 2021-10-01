import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'package:flutter_winner_office/main_widget/notify_widget.dart';

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
          backgroundColor: mcl10,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                // MaterialButton(onPressed: () {}),
                mail(), //mail
                underLine(),
                phone(), //phon
                underLine(),
                messageBox(), //message
                sendBtn(context), //Send
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget underLine() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(top: 1.0),
      color: mcl25,
    );
  }

  Widget sendBtn(context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, top: 15.0),
      width: 280,
      height: 35,
      child: MaterialButton(
        onPressed: () => dialogNotify(context, "Message was successfully sent"),
        child: Text(
          'Send',
          style: TextStyle(fontSize: 16),
        ),
        color: mcl1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }

  Widget mail() {
    return Container(
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
                  color: mcl28,
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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget phone() {
    return Container(
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
                  color: mcl29,
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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget messageBox() {
    return Column(
      children: <Widget>[
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
                      color: mcl30,
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
              hintStyle: TextStyle(color: mcl31, fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  new Radius.circular(5.0),
                ),
              ),
              labelStyle: TextStyle(color: Colors.black),
            ),
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
