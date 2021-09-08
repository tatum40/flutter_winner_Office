import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_winner_office/message_content/message.dart';

class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  _SpeakingState createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
  bool isNextChoice = false;
  int countRecord = 0;
  int currentChoice = 1;
  int dataful = 2;
  bool isRecord = false;
  bool finishTest = false;

  // กล่องข้อความแชท
  _buildMsnBox(Message msn, bool isServer, int step) {
    // ฟังเสียงปกติ
    final listenButton = MaterialButton(
      onPressed: () {},
      child: Icon(
        Icons.volume_up,
        color: Color(isServer ? 0xffffffff : 0xff01579b),
      ),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
    );

    // ฟังเสียงแบบช้า
    final slowButton = MaterialButton(
      onPressed: () {},
      child: Image.asset(isServer
          ? 'assets/images/turtle-w.png'
          : 'assets/images/turtle-b.png'),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
    );

    // เล่นเสียงที่อัดเข้าไป
    final playButton = MaterialButton(
      onPressed: () {},
      child: Icon(
        Icons.play_arrow,
        color: Color(isServer ? 0xffffffff : 0xff01579b),
      ),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(isServer ? 0xff01579b : 0xffe0e0e0),
    );

    final _playButton = !isServer && countRecord % 2 == 0 && countRecord != 0
        ? Row(
            mainAxisAlignment:
                isServer ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: <Widget>[playButton, listenButton, slowButton],
          )
        : Row(
            mainAxisAlignment:
                isServer ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: <Widget>[listenButton, slowButton],
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
        return 
        Row(
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

  // เมนูด้านล่าง
  Widget _buildBottomBar() {
    // ฟังเสียง
    final listenButton = MaterialButton(
      onPressed: countRecord != 0 && countRecord % 2 == 0 ? () => {} : null,
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
                color: Color(
                    countRecord == 0 || countRecord % 2 != 0 || isNextChoice
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
    );

    // อัดเสียง
    final recordSoundButton = MaterialButton(
      onPressed: () => {
        setState(() {
          isRecord = !isRecord;
          countRecord++;
          if (countRecord == 4) {
            finishTest = true;
          }
        }),
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
    );

    // ข้อถัดไป
    final nextChoiceButton = MaterialButton(
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
                color: Color(
                    countRecord == 0 || countRecord % 2 != 0 || isNextChoice
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
            width: 2),
      ),
    );

    //เล่นเสียงของฉันซ้ำ
    final playMySoundAgainButton = MaterialButton(
      onPressed: () {},
      minWidth: 300,
      height: 45,
      color: Color(0xffffab40),
      child: Text(
        'เล่นซ้ำการออกเสียงของฉัน',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    );

    //เปลี่ยนบทบาท
    final changeCharacterButton = MaterialButton(
      onPressed: () {},
      minWidth: 300,
      height: 45,
      color: Colors.white,
      child: Text(
        'เปลี่ยนบทบาท',
        style: TextStyle(color: Color(0xff01579b), fontSize: 16),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        borderSide: BorderSide(color: Color(0xff01579b), width: 1),
      ),
    );

    // ลองอีกครั้ง
    final tryAgainButton = MaterialButton(
      onPressed: () {
        setState(() {
          currentChoice = 1;
          countRecord = 0;
          finishTest = false;
          isRecord = false;
          isNextChoice = false;
        });
      },
      minWidth: 140,
      height: 45,
      color: Colors.white,
      child: Text(
        'ลองอีกครั้ง',
        style: TextStyle(color: Color(0xff01579b), fontSize: 16),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        borderSide: BorderSide(color: Color(0xff01579b), width: 1),
      ),
    );

    // จบแบบฝึกหัด
    final endButton = MaterialButton(
      onPressed: () => Navigator.pop(context),
      minWidth: 140,
      height: 45,
      color: Colors.white,
      child: Text(
        'จบ',
        style: TextStyle(color: Color(0xff01579b), fontSize: 16),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        borderSide: BorderSide(color: Color(0xff01579b), width: 1),
      ),
    );

    // bar function อัดเสียง
    final recordBar = Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[listenButton, recordSoundButton, nextChoiceButton],
      ),
    );

    // bar เมื่อทำเสร็จถึงข้อสุดท้าย
    final finalBar = Container(
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          playMySoundAgainButton,
          changeCharacterButton,
          Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[tryAgainButton, endButton],
            ),
          ),
        ],
      ),
    );

    // แสดงผล Bottom Bar
    if (finishTest) {
      return finalBar;
    } else {
      return recordBar;
    }
  }

  // Body
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
                  padding: EdgeInsets.only(bottom: 10.0),
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
