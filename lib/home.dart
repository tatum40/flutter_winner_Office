import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 35.0, bottom: 15.0),
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      hintText: 'Search here....',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      )),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5.0),
                margin: EdgeInsets.only(top: 10.0),
                color: Color(0xffeeeeee),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('ระดับเริ่มต้น'),
                              Text('Beginner')
                            ],
                          ),
                        ),
                        Container(
                            child: RaisedButton(
                          color: Color(0xffffab40),
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Text(
                                'More',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        )),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image1.png'),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('ระดับเริ่มต้น'),
                                    Text('Beginner')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset('assets/images/image2.png'),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('ระดับเริ่มต้น'),
                                    Text('Beginner')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
