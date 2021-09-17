import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  _SpeakingState createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
  int countRecord = 0;
  int currentChoice = 1;
  int dataful = 2;
  bool isRecord = false;
  bool finishTest = false;
  List<dynamic> chats = [
    {
      "sentence": "What time do you normally get up? \nปกติคุณตื่นนอนกี่โมง",
      "user": "sender",
      "step": 1,
      "urlSound": "assets/audios/sound1.wav"
    },
    {
      "sentence":
          "I usually get up at six on weekdays and around 9 at weekends.\nปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดาและประมาณ 9 โมงเช้าในวันหยุด",
      "user": "receiver",
      "step": 1,
      "urlSound": "assets/audios/sound2.wav"
    },
    {
      "sentence":
          "What do you usually have for breakfast? \nปกติคุณกินอะไรเป็นอาหารเช้า",
      "user": "sender",
      "step": 2,
    },
    {
      "sentence":
          "I eat fried rice for breakfast. \nฉันกินข้าวผัดเป็นอาหารเช้า",
      "user": "receiver",
      "step": 2,
    },
  ];
  final playAudios = AssetsAudioPlayer();

  bool isSpeaking = false;
  final _flutterTts = FlutterTts();

  void initializeTts() {
    _flutterTts.setStartHandler(() {
      setState(() {
        isSpeaking = true;
      });
    });
    _flutterTts.setCompletionHandler(() {
      setState(() {
        isSpeaking = false;
      });
    });
    _flutterTts.setErrorHandler((message) {
      setState(() {
        isSpeaking = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initializeTts();
  }

  void speak(msn) async {
    _flutterTts.setSpeechRate(0.5);
    await _flutterTts.speak(msn);
  }

  void speakSlow(msn) async {
    _flutterTts.setSpeechRate(0.3);
    await _flutterTts.speak(msn);
  }

  void stop() async {
    await _flutterTts.stop();
    setState(() {
      isSpeaking = false;
    });
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
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
            child: LinearPercentIndicator(
              width: 280,
              padding: EdgeInsets.all(0.0),
              lineHeight: 10,
              backgroundColor: Color(0xffe0e0e0),
              progressColor: Color(0xff90a4ae),
              percent: currentChoice / dataful,
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
                    final String msn = chats[index]['sentence'].toString();
                    final String user = chats[index]['user'].toString();
                    final int step = chats[index]['step'];
                    final url = chats[index]['urlSound'];

                    return _buildMsnBox(msn, user, step, url);
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
            color: Color(countRecord == 0 || countRecord % 2 != 0
                ? 0xffbdbdbd
                : 0xff01579b),
            size: 30,
          ),
          Text(
            'ฟัง',
            style: TextStyle(
                color: Color(countRecord == 0 || countRecord % 2 != 0
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
              color: Color(countRecord == 0 || countRecord % 2 != 0
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
      onPressed: countRecord != 0 && !isRecord
          ? () => {
                setState(() {
                  if (currentChoice != dataful) {
                    currentChoice++;
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
                color: Color(countRecord == 0 || countRecord % 2 != 0
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
            color: Color(countRecord == 0 || countRecord % 2 != 0
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

  // กล่องข้อความแชท
  _buildMsnBox(String msn, String user, int step, url) {
    // ฟังเสียงปกติ
    final listenButton = MaterialButton(
      onPressed: () => !isSpeaking ?  speak(msn) : stop(),
      child: Icon(
        Icons.volume_up,
        color: Color(user == 'sender' ? 0xffffffff : 0xff01579b),
      ),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(user == 'sender' ? 0xff01579b : 0xffe0e0e0),
    );

    // ฟังเสียงแบบช้า
    final slowButton = MaterialButton(
      onPressed: () {
        !isSpeaking ?  speakSlow(msn) : stop();
      },
      child: Image.asset(user == 'sender'
          ? 'assets/images/turtle-w.png'
          : 'assets/images/turtle-b.png'),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(user == 'sender' ? 0xff01579b : 0xffe0e0e0),
    );

    // เล่นเสียงที่อัดเข้าไป
    final playButton = MaterialButton(
      onPressed: () {},
      child: Icon(
        Icons.play_arrow,
        color: Color(user == 'sender' ? 0xffffffff : 0xff01579b),
      ),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(user == 'sender' ? 0xff01579b : 0xffe0e0e0),
    );

    final _playButton =
        user == 'receiver' && countRecord % 2 == 0 && countRecord != 0
            ? Row(
                mainAxisAlignment: user == 'sender'
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.end,
                children: <Widget>[playButton, listenButton, slowButton],
              )
            : Row(
                mainAxisAlignment: user == 'sender'
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.end,
                children: <Widget>[listenButton, slowButton],
              );

    final msnBox = Column(
      children: <Widget>[
        Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: user == 'sender'
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
            color: Color(user == 'sender' ? 0xff01579b : 0xffe0e0e0),
          ),
          margin: user == 'sender'
              ? EdgeInsets.only(top: 10.0)
              : EdgeInsets.only(top: 10.0, right: 10.0, left: 60.0),
          padding: EdgeInsets.all(10.0),
          child: Text(
            msn,
            style: TextStyle(
                fontSize: 16,
                color: user == 'sender' ? Colors.white : Colors.black),
          ),
        ),
        Container(
            margin: user == 'sender'
                ? EdgeInsets.only(left: 10.0)
                : EdgeInsets.only(left: 40.0),
            width: 300,
            child: _playButton)
      ],
    );

    if (currentChoice == 1) {
      //ถ้าเป็นข้อแรก
      if (step == 1) {
        //ถ้าเป็นข้อความชุดที่1
        if (user == 'receiver') {
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
      if (user == 'receiver') {
        return msnBox;
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 10.0),
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
}
