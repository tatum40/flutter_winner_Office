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
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                padding: EdgeInsets.only(top: 1.0),
                color: Color(0xffe4e4e4),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/images/master.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'ธนาคารไทยพาณิชย์',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 5.0),
                          child: Text(
                            '*1234',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.chevron_right),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                padding: EdgeInsets.only(top: 1.0),
                color: Color(0xffe4e4e4),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setcredit())),
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Image.asset('assets/images/addCredit.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'เพิ่มบัตรเครดิต/บัตรเดบิต',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff8d8d8d)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.chevron_right),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                padding: EdgeInsets.only(top: 1.0),
                color: Color(0xffe4e4e4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Setcredit extends StatelessWidget {
  const Setcredit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'บัตรเครดิต/บัตรเดบบิต',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff4f4f4),
      ),
      body: Center(
        child: Container(
          child: Form(
            child: Column(
              children: <Widget>[
                // RaisedButton(onPressed: () {}),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 320,
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter a valid given name';
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: "Name on card"),
                  ),
                ),
                Container(
                  width: 320,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border:
                              Border.all(color: Color(0xffcccccc), width: 2),
                        ),
                        child: Image.asset('assets/images/visa.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0 , right: 5.0),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border:
                              Border.all(color: Color(0xffcccccc), width: 2),
                        ),
                        child: Image.asset('assets/images/master.png'),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border:
                              Border.all(color: Color(0xffcccccc), width: 2),
                        ),
                        child: Image.asset('assets/images/jcb.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 320,
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter a valid given name';
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: "Card number"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 320,
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter a valid given name';
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: "Expiry date (MM/YY)"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 320,
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter a valid given name';
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: "Security code",
                        suffixIcon: Icon(Icons.help , size: 25,)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 320,
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter a valid given name';
                    //   }
                    //   return null;
                    // },
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: "ZIP/Postal code"),
                  ),
                ),
                Container(
                      margin: EdgeInsets.only(top: 25.0),
                      width: 320,
                      height: 35,
                      child: RaisedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Save' , style: TextStyle(fontSize: 16),),
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
    );
  }
}
