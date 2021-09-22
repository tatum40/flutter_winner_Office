import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_winner_office/content/main/home.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

List<dynamic> chats = [
  {
    "sentence":
        'What time does Andrea normally get up on Saturday \nปกติในวันเสาร์แอนเดียร์ตื่นเวลาเท่าไหร่',
    "choice": [
      '1 am',
      '9 am',
      '3 am',
      '4 pm',
    ],
    "answer": '9 am \n9 โมงเช้า',
    "correctAnswer": 2,
    "multipleType": "questionSentence"
  },
  {
    "sentence": 'What time do you normally get up?\nปกติคุณตื่นนอนกี่โมง',
    "choice": [
      '1 am',
      '9 pm',
      '6 am',
      '10 pm',
    ],
    "answer":
        'I usually get up at six on weekdays\nปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดา',
    "correctAnswer": 3,
    "multipleType": "questionSentence"
  },
  {
    "questionSound": 'assets/audios/sound1.wav',
    "choice": [
      'Usually',
      'Never',
      'Sometime',
      'Rarely',
    ],
    "correctAnswer": 1,
    "multipleType": "questionSound"
  },
  {
    "sentence": 'What time do you normally get up?\nปกติคุณตื่นนอนกี่โมง',
    "choice": [
      'usually',
      'around 9',
      'at six',
      'weekends',
      'on',
      'get up',
      'weekdays',
      'and',
      'I',
      'at',
    ],
    "correctSentence": [
      'I usually get up at six on weekdays and around 9 at weekends'
    ],
    "answer":
        'ปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดา และประมาณ 9 โมงเช้าในวันหยุด',
    "correctAnswer": 3,
    "multipleType": "multiSelect"
  },
];

List<dynamic> stackAnswer = [];
bool isCorrect = false;

int currentChoice = 1;
int selectAnswer = 0;
bool isSendAnswer = false;

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  void sendAnswer() {
    setState(
      () {
        if (isSendAnswer == false) {
          isSendAnswer = true;
          if (currentChoice == 4) {

            List<String> myList = chats[currentChoice - 1]['correctSentence'];
            String answer = stackAnswer.join(" ");
            myList.contains(answer) ? isCorrect = true : isCorrect = false;
          }
        } else {
          isSendAnswer = false;
          selectAnswer = 0;
          if (currentChoice != chats.length) {
            currentChoice++;
          } else {
            showDialogFinish();
          }
        }
      },
    );
  }

  void showDialogFinish() {
    Widget circleWithStar() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 165,
                  height: 190,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: mcl13,
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 150,
                  child: Row(
                    children: <Widget>[
                      for (int i = 0; i < 3; i++)
                        Icon(
                          Icons.star,
                          color: mcl7,
                          size: 45,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget headbutton(iconname) {
      return Container(
        height: 45,
        width: 50,
        child: Image.asset("assets/images/$iconname.png"),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0)),
          color: iconname == 'fbIcon' ? mcl9 : mcl8,
          boxShadow: [
            BoxShadow(
              color: Colors.black45.withOpacity(0.2),
              blurRadius: 1.0,
              offset: Offset(2, 0), // Shadow position
            ),
          ],
        ),
      );
    }

    Widget containButton(messageButton) {
      return Container(
        width: 270,
        height: 45,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          color: messageButton == "Share on Facebook" ? mcl9 : mcl8,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 40.0),
                  child: Text(
                    messageButton,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        ),
      );
    }

    Widget _fbButton() {
      return Container(
        margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
        child: Stack(
          children: <Widget>[
            containButton('Share on Facebook'),
            Positioned(child: headbutton('fbIcon'))
          ],
        ),
      );
    }

    Widget _twitButton() {
      return Container(
        child: Stack(
          children: <Widget>[
            containButton('Share on Twitter'),
            Positioned(child: headbutton('twitchIcon'))
          ],
        ),
      );
    }

    Widget _mainmenuButton(iconName, num) {
      return Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        width: 70,
        height: 70,
        child: MaterialButton(
          shape: CircleBorder(),
          onPressed: () => {
            num == 1
                ? Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()))
                : num == 2
                    ? setState(() {
                        currentChoice = 1;
                        chats[3]['choice'] = stackAnswer;
                        stackAnswer = [];
                        Navigator.pop(context);
                      })
                    : null
          },
          child: iconName,
          color: mcl1,
        ),
      );
    }

    List iconName = [
      Icon(Icons.home, size: 37, color: Colors.white),
      Icon(Icons.refresh, size: 37, color: Colors.white),
      Icon(Icons.arrow_forward, size: 37, color: Colors.white)
    ];

    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: Container(
          height: 330,
          child: Column(
            children: <Widget>[circleWithStar(), _fbButton(), _twitButton()],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 25.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < iconName.length; i++)
                    _mainmenuButton(iconName[i], i + 1)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void nextChoice() {
    setState(() {
      currentChoice++;
      selectAnswer = 0;
    });
  }

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

  void speakMessageSentence(msn) async {
    _flutterTts.setSpeechRate(0.5);
    await _flutterTts.speak(msn);
  }

  void speakMessageAnswer(answer) async {
    _flutterTts.setSpeechRate(0.5);
    await _flutterTts.speak(answer);
  }

  // void speakSlow() async {
  //   _flutterTts.setSpeechRate(0.3);
  //   await _flutterTts.speak();
  // }

  void speakChoiceAnswer(answer) async {
    _flutterTts.setSpeechRate(0.5);
    await _flutterTts.speak(answer);
  }

  void speakQuestionSound(questionSound) async {
    final _questionPath = AssetsAudioPlayer();

    _questionPath.open(Audio(questionSound));
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

  //Body
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _myAppBar(),
        body: Center(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    _questionsBox(),
                    chats[currentChoice - 1]['multipleType'] != 'multiSelect'
                        ? _choiceAnswerBox()
                        : _multiSelection(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: floatingNext(),
      ),
    );
  }

  _myAppBar() {
    return AppBar(
      backgroundColor: mcl10,
      leading: IconButton(
        padding: EdgeInsets.all(0.0),
        icon: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      iconTheme: IconThemeData(
        color: mcl2, //change your color here
      ),
      title: Container(
        child: LinearPercentIndicator(
            padding: EdgeInsets.all(0.0),
            width: 280,
            lineHeight: 10,
            backgroundColor: mcl4,
            progressColor: mcl5,
            percent: currentChoice / chats.length),
      ),
    );
  }

  Widget _questionsBox() {
    final multiType = chats[currentChoice - 1]['multipleType'];

    if (multiType != 'questionSound') {
      final sentence = chats[currentChoice - 1]['sentence'];
      final answer = chats[currentChoice - 1]['answer'];
      // ฟังเสียงปกติ
      final listenButton = MaterialButton(
        onPressed: () => !isSpeaking ? speakMessageSentence(sentence) : stop(),
        child: Icon(
          Icons.volume_up,
          color: mcl39,
        ),
        shape: CircleBorder(),
        minWidth: 20,
        color: mcl2,
      );
      // ฟังเสียงคำตอบ
      final listenAnswerButton = isSendAnswer || multiType == 'multiSelect'
          ? MaterialButton(
              onPressed: () =>
                  !isSpeaking ? speakMessageAnswer(answer) : stop(),
              child: Icon(
                Icons.volume_up,
                color: mcl2,
              ),
              shape: CircleBorder(),
              minWidth: 20,
              color: mcl4,
            )
          : Container();

      // ฟังเสียงแบบช้า
      // final slowButton = MaterialButton(
      //   onPressed: () {},
      //   child: Image.asset('assets/images/turtle-w.png'),
      //   shape: CircleBorder(),
      //   minWidth: 20,
      //   color: Color(0xff01579b),
      // );

      // กล่องข้อความ
      final msnBox = Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          color: mcl2,
        ),
        margin: EdgeInsets.only(top: 10.0, left: 5.0),
        padding: EdgeInsets.all(10.0),
        child: Text(
          sentence,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      );

      //กล่องตอบ
      final answerBox = Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(top: 10.0, right: 15.0),
            width: isSendAnswer || multiType == 'multiSelect' ? 300 : 100,
            height: isSendAnswer || multiType == 'multiSelect' ? null : 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              color: mcl4,
            ),
            child: isSendAnswer || multiType == 'multiSelect'
                ? Container(
                    child: Text(
                      answer,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  )
                : Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.lens,
                          size: 12.0,
                          color: mcl7,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Icon(
                            Icons.lens,
                            size: 12.0,
                            color: mcl7,
                          ),
                        ),
                        Icon(
                          Icons.lens,
                          size: 12.0,
                          color: mcl7,
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      );

      // icon people
      final iconPeople = Container(
        margin: EdgeInsets.only(top: 10.0, left: 5.0),
        child: Icon(
          Icons.account_circle_outlined,
          size: 35.0,
          color: mcl38,
        ),
      );

      return Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[iconPeople, msnBox],
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: Row(
              children: <Widget>[listenButton],
            ),
          ),
          answerBox,
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[listenAnswerButton],
            ),
          ),
        ],
      );
    } else {
      final questionSound = chats[currentChoice - 1]['questionSound'];
      return Container(
        margin: EdgeInsets.only(top: 40.0, bottom: 15.0),
        width: 100,
        height: 100,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: MaterialButton(
          color: mcl2,
          shape: CircleBorder(),
          onPressed: () => speakQuestionSound(questionSound),
          child: Icon(
            Icons.volume_up,
            size: 55,
            color: Colors.white,
          ),
        ),
      );
    }
  }

  Widget _choiceAnswerBox() {
    Widget soundButton(item, i) {
      return Container(
        width: 30,
        height: 30,
        child: Material(
          type: MaterialType.transparency,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(
                  color: selectAnswer == i + 1 ? Colors.white : mcl2,
                  width: 1.5),
              color: selectAnswer == i + 1 ? mcl1 : Colors.white,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(1000.0),
              onTap: () => !isSpeaking ? speakChoiceAnswer(item) : stop(),
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Icons.volume_up,
                  size: 20.0,
                  color: selectAnswer == i + 1 ? Colors.white : mcl2,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget selectButton(item, i) {
      return Container(
        width: 300,
        child: MaterialButton(
          height: 45,
          onPressed: () {
            setState(
              () {
                selectAnswer = i + 1;
              },
            );
          },
          color: selectAnswer == i + 1 ? mcl1 : Colors.white,
          shape: selectAnswer != i + 1
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  borderSide: BorderSide(color: mcl2, width: 1.5),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                item,
                style: TextStyle(
                    color: selectAnswer == i + 1 ? Colors.white : Colors.black),
              ),
              soundButton(item, i)
            ],
          ),
        ),
      );
    }

    Widget showCorrectAnswer(item, i) {
      return Container(
        width: 300,
        height: 45,
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              item,
              style: TextStyle(
                color: i + 1 == chats[currentChoice - 1]['correctAnswer']
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            Container(
              width: 30,
              height: 30,
              child: Icon(
                Icons.volume_up,
                size: 20,
                color: i + 1 == chats[currentChoice - 1]['correctAnswer']
                    ? Colors.white
                    : mcl2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: i + 1 == chats[currentChoice - 1]['correctAnswer']
                    ? mcl3
                    : Colors.white,
                border: Border.all(
                  color: i + 1 == chats[currentChoice - 1]['correctAnswer']
                      ? Colors.white
                      : mcl2,
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          color: i + 1 == chats[currentChoice - 1]['correctAnswer']
              ? mcl3
              : Colors.white,
          border: i + 1 == chats[currentChoice - 1]['correctAnswer']
              ? null
              : Border.all(color: mcl2),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          for (var i = 0; i < chats[currentChoice - 1]['choice'].length; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: !isSendAnswer
                  ? selectButton(chats[currentChoice - 1]['choice'][i], i)
                  : showCorrectAnswer(chats[currentChoice - 1]['choice'][i], i),
            )
        ],
      ),
    );
  }

  Widget _multiSelection() {
    Widget finalSelectButton(item) {
      Widget selectButton() {
        return Container(
          margin: EdgeInsets.all(5.0),
          width: 100,
          height: 40,
          child: MaterialButton(
              onPressed: !isSendAnswer
                  ? () {
                      setState(
                        () {
                          if (!stackAnswer.contains(item)) {
                            stackAnswer.add(item);
                          }
                          chats[currentChoice - 1]["choice"].remove(item);
                        },
                      );
                    }
                  : () {},
              child: Text(
                item,
                style: TextStyle(
                    color: !isSendAnswer ? Colors.black : Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              color: !isSendAnswer
                  ? mcl5
                  : !isCorrect
                      ? Colors.red
                      : mcl3),
        );
      }

      Widget unSelectButton() {
        return Container(
          width: 25,
          height: 25,
          child: MaterialButton(
            onPressed: !isSendAnswer
                ? () {
                    setState(
                      () {
                        stackAnswer.remove(item);
                        if (!chats[currentChoice - 1]["choice"]
                            .contains(item)) {
                          chats[currentChoice - 1]["choice"].add(item);
                        }
                        print(stackAnswer);
                        print(chats[currentChoice - 1]["choice"]);
                      },
                    );
                  }
                : () {},
            color: mcl11,
            child: Icon(
              Icons.close,
              size: 15,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(0.0),
            shape: CircleBorder(),
          ),
        );
      }

      return Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 6.0),
            child: selectButton(),
          ),
          Positioned(
            child: unSelectButton(),
            left: 80,
          )
        ],
      );
    }

    Widget sentenceBox() {
      return Container(
        width: 340,
        constraints: BoxConstraints(minHeight: 200, maxHeight: double.infinity),
        padding: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: mcl4,
        ),
        child: Wrap(
          children: <Widget>[
            for (var i = 0; i < stackAnswer.length; i++)
              finalSelectButton(stackAnswer[i])
          ],
        ),
      );
    }

    Widget sentenceChoice() {
      return Wrap(
        children: <Widget>[
          for (var i = 0; i < chats[currentChoice - 1]["choice"].length; i++)
            finalSelectButton(chats[currentChoice - 1]["choice"][i])
        ],
      );
    }

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: sentenceBox(),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 50.0),
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: sentenceChoice(),
        ),
      ],
    );
  }

  Widget floatingNext() {
    return Container(
      width: 80,
      height: 45,
      child: MaterialButton(
        color: Colors.white,
        onPressed: selectAnswer == 0 &&
                !isSendAnswer &&
                chats[currentChoice - 1]["choice"].length != 0
            ? null
            : sendAnswer,
        child: Text(
          currentChoice == chats.length && isSendAnswer ? 'จบ' : 'ถัดไป',
          style: TextStyle(
            color: selectAnswer != 0 ||
                    chats[currentChoice - 1]["choice"].length == 0
                ? mcl2
                : mcl12,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: selectAnswer != 0 ||
                    chats[currentChoice - 1]["choice"].length == 0
                ? mcl2
                : mcl12,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
