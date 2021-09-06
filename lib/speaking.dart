import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/message.dart';
import 'package:record/record.dart';

class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  _SpeakingState createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
  bool isNextChoice = false;
  int countRecord = 0;
  int currentChoice = 1;
  bool isRecord = false;
  

  // -----------------------------------
  Record myRecord = Record();
  Future startRecord() async {
// Start recording
    await myRecord.start(
      path: 'assets/audios/myFile.m4a', // required
      encoder: AudioEncoder.AAC, // by default
      bitRate: 128000, // by default
      samplingRate: 44100, // by default
    );

    await myRecord.stop();
  }

  Future stopRecord() async {
    await myRecord.stop();

    bool isRecording = await myRecord.isRecording();

    print(isRecording);
  }

  // -----------------------------------
  _buildMsnBox(Message msn, bool isServer, int step) {
    final _playButton = !isServer && countRecord % 2 == 0 && countRecord != 0
        ? Row(
            mainAxisAlignment:
                isServer ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.volume_up,
                  color: Color(isServer ? 0xffffffff : 0xff01579b),
                ),
                shape: CircleBorder(),
                minWidth: 20,
                color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.volume_up,
                  color: Color(isServer ? 0xffffffff : 0xff01579b),
                ),
                shape: CircleBorder(),
                minWidth: 20,
                color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
              ),
              MaterialButton(
                onPressed: () {},
                child: Image.asset(isServer
                    ? 'assets/images/turtle-w.png'
                    : 'assets/images/turtle-b.png'),
                shape: CircleBorder(),
                minWidth: 20,
                color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
              ),
            ],
          )
        : Row(
            mainAxisAlignment:
                isServer ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.volume_up,
                  color: Color(isServer ? 0xffffffff : 0xff01579b),
                ),
                shape: CircleBorder(),
                minWidth: 20,
                color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
              ),
              MaterialButton(
                onPressed: () {},
                child: Image.asset(isServer
                    ? 'assets/images/turtle-w.png'
                    : 'assets/images/turtle-b.png'),
                shape: CircleBorder(),
                minWidth: 20,
                color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
              ),
            ],
          );

    final msnBox = Column(
      children: <Widget>[
        Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: isServer
                ? BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))
                : BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
            color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
          ),
          margin: isServer
              ? EdgeInsets.only(top: 10.0, left: 5.0)
              : EdgeInsets.only(top: 10.0, right: 10.0, left: 60.0),
          padding: EdgeInsets.all(10.0),
          child: Text(
            msn.sentence,
            style: TextStyle(
                fontSize: 16, color: isServer ? Colors.white : Colors.black),
          ),
        ),
        Container(
            margin: !isServer ? EdgeInsets.only(left: 40.0) : null,
            width: 300,
            child: _playButton)
      ],
    );

    if (currentChoice == 1) {
      //ถ้าเป็นข้อแรก
      if (step == 1) {
        //ถ้าเป็นข้อความชุดที่1
        if (!isServer) {
          //ถ้าไม่ใช่ข้อความเริ่มต้น
          return msnBox;
        } else {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 10.0, left: 5.0),
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 35.0,
                    color: Color(0xffaaaaaa),
                  )),
              msnBox
            ],
          );
        }
      } else {
        //ถ้าไม่เป็นข้อความชุดที่1
        return Container();
      }
    } else {
      if (!isServer) {
        return msnBox;
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 10.0, left: 5.0),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 35.0,
                  color: Color(0xffaaaaaa),
                )),
            msnBox
          ],
        );
      }
    }
  }

  Widget _buildBottomBar() {
    return Container(
      color: Colors.white,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // ฟังเสียง
          MaterialButton(
            onPressed:
                countRecord != 0 && countRecord % 2 == 0 ? () => {} : null,
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
          // อัดเสียง
          MaterialButton(
            onPressed: () => {
              setState(() {
                isRecord = !isRecord;
              }),
              if (isRecord) {startRecord()} else {stopRecord()}
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

          // ถัดไป
          MaterialButton(
            onPressed: countRecord != 0 && countRecord % 2 == 0
                ? () => {
                      setState(() {
                        if (currentChoice != 4) {
                          currentChoice++;
                          isNextChoice = true;
                        }
                      })
                    }
                : null,
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
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message msn = chats[index];
                    final bool isServer = chats[index].isServer;
                    final int step = chats[index].step;

                    return _buildMsnBox(msn, isServer, step);
                  },
                ),
              ),
            ),
            _buildBottomBar()
          ],
        ),
      ),
    );
  }
}
