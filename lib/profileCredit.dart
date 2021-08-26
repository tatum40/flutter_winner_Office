import 'package:flutter/material.dart';

class Credit extends StatefulWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  _CreditState createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Credit account',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff4f4f4),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'บัตรเครดิต/บัตรเดบิตของฉัน',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
