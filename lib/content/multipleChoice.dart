import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_winner_office/content/home.dart';
import 'package:flutter_winner_office/content/homeMenu.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  int currentChoice = 1;
  int selectAnswer = 0;
  bool isSendAnswer = false;

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
        'I',
        'usually',
        'get up',
        'at six',
        'on',
        'weekdays',
        'and',
        'around 9',
        'at',
        'weekends',
      ],
      "answer":
          'ปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดา และประมาณ 9 โมงเช้าในวันหยุด',
      "correctAnswer": 3,
      "multipleType": "multiSelect"
    },
  ];

  void sendAnswer() {
    setState(
      () {
        if (isSendAnswer == false) {
          isSendAnswer = true;
          print(selectAnswer);
        } else {
          isSendAnswer = false;
          selectAnswer = 0;
          if (currentChoice != chats.length) {
            currentChoice++;
          } else {
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
                              shape: BoxShape.circle, color: Color(0xffd0d0d0)),
                        ),
                        Positioned(
                            left: 15,
                            top: 150,
                            child: Row(
                              children: <Widget>[
                                for (int i = 0; i < 3; i++)
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff616161),
                                    size: 45,
                                  ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              );
            }

            Widget headbutton(iconname, colorButton) {
              return Container(
                height: 45,
                width: 50,
                child: Image.asset("assets/images/$iconname.png"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0)),
                  color: Color(colorButton),
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

            Widget containButton(colorButton, messageButton) {
              return Container(
                width: 270,
                height: 45,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                  color: Color(colorButton),
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
                    containButton(0xff5578b2, 'Share on Facebook'),
                    Positioned(child: headbutton('fbIcon', 0xff5578b2))
                  ],
                ),
              );
            }

            Widget _twitButton() {
              return Container(
                child: Stack(
                  children: <Widget>[
                    containButton(0xff51CBF2, 'Share on Twitter'),
                    Positioned(child: headbutton('twitchIcon', 0xff51CBF2))
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
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()))
                        : num == 2
                            ? setState(() {
                                currentChoice = 1;
                                Navigator.pop(context);
                              })
                            : null
                  },
                  child: iconName,
                  color: Color(0xffffab40),
                ),
              );
            }

            List iconName = [
              Icon(Icons.home, size: 37, color: Colors.white),
              Icon(Icons.refresh, size: 37, color: Colors.white),
              Icon(Icons.arrow_forward, size: 37, color: Colors.white)
            ];

            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                content: Container(
                  height: 330,
                  child: Column(
                    children: <Widget>[
                      circleWithStar(),
                      _fbButton(),
                      _twitButton()
                    ],
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
        }
      },
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

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _myAppBar(),
          body: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 70.0),
              child: Column(
                children: <Widget>[
                  _questionsBox(),
                  chats[currentChoice - 1]['multipleType'] != 'multiSelect'
                      ? _choiceAnswerBox()
                      : _multiSelection()
                ],
              ),
            ),
          ),
          floatingActionButton: floatingNext()),
    );
  }

  _myAppBar() {
    return AppBar(
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
                color: Color(0xffE0E0E0),
              ),
            ),
            Positioned(
              child: Container(
                width: currentChoice * 300 / chats.length,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xff90a4ae),
                ),
              ),
            )
          ],
        ),
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
          color: Color(0xffffffff),
        ),
        shape: CircleBorder(),
        minWidth: 20,
        color: Color(0xff01579b),
      );
      // ฟังเสียงคำตอบ
      final listenAnswerButton = isSendAnswer || multiType == 'multiSelect'
          ? MaterialButton(
              onPressed: () =>
                  !isSpeaking ? speakMessageAnswer(answer) : stop(),
              child: Icon(
                Icons.volume_up,
                color: Color(0xff01579b),
              ),
              shape: CircleBorder(),
              minWidth: 20,
              color: Color(0xffe0e0e0),
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
              bottomRight: Radius.circular(20.0)),
          color: Color(0xff01579b),
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
                  bottomRight: Radius.circular(20.0)),
              color: Color(0xffe0e0e0),
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
                          color: Color(0xff616161),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Icon(
                            Icons.lens,
                            size: 12.0,
                            color: Color(0xff616161),
                          ),
                        ),
                        Icon(
                          Icons.lens,
                          size: 12.0,
                          color: Color(0xff616161),
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
          color: Color(0xffaaaaaa),
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
          color: Color(0xff01579b),
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
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        width: 300,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 10.0),
          itemCount: chats[currentChoice - 1]['choice'].length,
          itemBuilder: (BuildContext context, int index) {
            final List answer = chats[currentChoice - 1]['choice'];
            final int correctAnswer = chats[currentChoice - 1]['correctAnswer'];
            final soundButton = Container(
              width: 30,
              height: 30,
              child: Material(
                type: MaterialType.transparency,
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(selectAnswer == index + 1
                            ? 0xffffffff
                            : 0xff01579b),
                        width: 1.5),
                    color: Color(
                        selectAnswer == index + 1 ? 0xffffab40 : 0xffffffff),
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(1000.0),
                    onTap: () =>
                        !isSpeaking ? speakChoiceAnswer(answer[index]) : stop(),
                    child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.volume_up,
                          size: 20.0,
                          color: Color(selectAnswer == index + 1
                              ? 0xffffffff
                              : 0xff01579b),
                        )),
                  ),
                ),
              ),
            );

            final selectButton = MaterialButton(
              height: 45,
              onPressed: () {
                setState(() {
                  selectAnswer = index + 1;
                });
              },
              color:
                  selectAnswer == index + 1 ? Color(0xffffab40) : Colors.white,
              shape: selectAnswer != index + 1
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                      borderSide:
                          BorderSide(color: Color(0xff01579b), width: 1.5),
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
                    answer[index],
                    style: TextStyle(
                        color: selectAnswer == index + 1
                            ? Colors.white
                            : Colors.black),
                  ),
                  soundButton
                ],
              ),
            );

            final showCorrectAnswer = Container(
              height: 45,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    answer[index],
                    style: TextStyle(
                        color: index + 1 == correctAnswer
                            ? Color(0xffffffff)
                            : Color(0xff000000)),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.volume_up,
                      size: 20,
                      color: Color(
                          index + 1 == correctAnswer ? 0xffffffff : 0xff01579b),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Color(
                          index + 1 == correctAnswer ? 0xff4ab71e : 0xffffffff),
                      border: Border.all(
                        color: Color(index + 1 == correctAnswer
                            ? 0xffffffff
                            : 0xff01579b),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  color: index + 1 == correctAnswer
                      ? Color(0xff4ab71e)
                      : Color(0xffffffff),
                  border: index + 1 == correctAnswer
                      ? null
                      : Border.all(color: Color(0xff01579b))),
            );

            return Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: isSendAnswer ? showCorrectAnswer : selectButton);
          },
        ),
      ),
    );
  }

  Widget _multiSelection() {
    final _gridAnswerBox = Container(
      margin: EdgeInsets.only(top: 10.0),
      width: 340,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color(0xffe0e0e0)),
      // child: Draggable(
      //   child:
      //   Container(
      //     child: Text('Red'),
      //     color: Colors.red[200],
      //   ),
      //   feedback: Container(
      //     child: Text('Green'),
      //     color: Colors.green[200],
      //   ),
      // ),
    );

    final _gridSelectChoice = GridView.builder(
      padding:
          EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 30.0),
      itemCount: chats[currentChoice - 1]['choice'].length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 125.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2.5,
          mainAxisSpacing: 10.0),
      itemBuilder: (BuildContext context, index) {
        final answerChoice = chats[currentChoice - 1]['choice'];

        final _unSelectButton = Container(
          width: 20,
          height: 20,
          child: Material(
            type: MaterialType.transparency,
            child: Ink(
              decoration: BoxDecoration(
                color: Color(0xff757575),
                shape: BoxShape.circle,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(1000.0),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.close,
                    size: 13.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );

        final _finalBox = Container(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top: 5.0, right: 3.0),
                  child: MaterialButton(
                    onPressed: () {
                      print(answerChoice[index]);
                      setState(() {
                        selectAnswer = index + 1;
                      });
                    },
                    color: Color(0xff90a4ae),
                    child: Text(answerChoice[index]),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: _unSelectButton,
              )
            ],
          ),
        );
        return Draggable(child: _finalBox, feedback: _finalBox);
      },
    );

    return Container(
      child: Expanded(
        child: Column(
          children: <Widget>[
            _gridAnswerBox,
            Expanded(
              child: _gridSelectChoice,
            ),
          ],
        ),
      ),
    );
  }

  Widget floatingNext() {
    return Container(
      width: 80,
      height: 45,
      child: MaterialButton(
        color: Colors.white,
        onPressed: selectAnswer == 0 && !isSendAnswer ? null : sendAnswer,
        child: Text(
          currentChoice == chats.length && isSendAnswer ? 'จบ' : 'ถัดไป',
          style: TextStyle(
            color: Color(selectAnswer != 0 ? 0xff01579b : 0xffbdbdbd),
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(selectAnswer != 0 ? 0xff01579b : 0xffbdbdbd),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
