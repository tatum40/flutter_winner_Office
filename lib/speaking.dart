import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/message.dart';

class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  _SpeakingState createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
  bool isRecord = false;
  bool isNextChoice = false;
  int countRecord = 0;
  int currentChoice = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff4f4f4),
          leading: IconButton(
            padding: EdgeInsets.all(0.0),
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          iconTheme: IconThemeData(
            color: Color(0xff01579b), //change your color here
          ),
          title: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Color(0xffE0E0E0)),
                ),
                Positioned(
                  child: Container(
                    width: currentChoice * 300 / 2,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Color(0xff90a4ae)),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(chats[index].sentenceEng);
                }),
          ))
        ]),
      ),
    );
  }

  Widget bottomBar() {
    return Container(
      color: Colors.white,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MaterialButton(
            onPressed: () {},
            minWidth: 80,
            height: 45,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  color: Color(
                      countRecord == 0 || countRecord % 2 != 0 || isNextChoice
                          ? 0xffbdbdbd
                          : 0xff01579b),
                  size: 30,
                ),
                Text(
                  'ฟัง',
                  style: TextStyle(
                      color: Color(countRecord == 0 ||
                              countRecord % 2 != 0 ||
                              isNextChoice
                          ? 0xffbdbdbd
                          : 0xff01579b),
                      fontSize: 16),
                )
              ],
            ),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(
                    color: Color(
                        countRecord == 0 || countRecord % 2 != 0 || isNextChoice
                            ? 0xffbdbdbd
                            : 0xff01579b),
                    width: 2)),
          ),
          MaterialButton(
            onPressed: () => {
              setState(() {
                isRecord = !isRecord;
                countRecord++;
                isNextChoice = false;
                print(countRecord);
              })
            },
            minWidth: 80,
            height: 80,
            color: Color(0xffffab40),
            child: (isRecord)
                ? Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.lens,
                          color: Colors.white,
                          size: 15,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Icon(
                              Icons.lens,
                              color: Colors.white,
                              size: 10,
                            )),
                        Icon(
                          Icons.lens,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                  )
                : Icon(
                    Icons.mic,
                    size: 50,
                    color: Colors.white,
                  ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                if (currentChoice != 4) {
                  currentChoice++;
                  isNextChoice = true;
                }
              });
            },
            minWidth: 80,
            height: 45,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Text(
                  'ถัดไป',
                  style: TextStyle(
                      color: Color(countRecord == 0 ||
                              countRecord % 2 != 0 ||
                              isNextChoice
                          ? 0xffbdbdbd
                          : 0xff01579b),
                      fontSize: 16),
                )
              ],
            ),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(
                    color: Color(
                        countRecord == 0 || countRecord % 2 != 0 || isNextChoice
                            ? 0xffbdbdbd
                            : 0xff01579b),
                    width: 2)),
          ),
        ],
      ),
    );
  }

  Widget blueBox() {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 10.0),
      padding: EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // RaisedButton(onPressed: () {}),
              Container(
                width: 30,
                margin: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xffaaaaaa),
                  size: 35,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 270,
                height: 74,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Color(0xff01579b)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'What time do you normally get up?',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        'ปกติคุณตื่นนอนกี่โมง',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                ),
                Container(
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.volume_up,
                      color: Colors.white,
                    ),
                    shape: CircleBorder(),
                    color: Color(0xff01579b),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/turtle-w.png',
                        fit: BoxFit.contain),
                    shape: CircleBorder(),
                    color: Color(0xff01579b),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget whitebox() {
    return Container(
      margin: EdgeInsets.only(top: 15.0, right: 15.0),
      padding: EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                width: 270,
                height: 74,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Color(0xffe0e0e0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'What time do you normally get up?',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        'ปกติคุณตื่นนอนกี่โมง',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.volume_up,
                      color: Color(0xff01579b),
                    ),
                    shape: CircleBorder(),
                    color: Color(0xffe0e0e0),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 35,
                  height: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/turtle-b.png',
                        fit: BoxFit.contain),
                    shape: CircleBorder(),
                    color: Color(0xffe0e0e0),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
