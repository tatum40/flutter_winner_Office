import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  int currentChoice = 1;
  int dataful = 2;
  int selectAnswer = 0;
  bool isSendAnswer = false;

  List<dynamic> message = [
    {
      "sentence":
          'What time does Andrea normally get up on Saturday \nปกติในวันเสาร์แอนเดียร์จตื่นเวลาเท่าไหร่',
      "isServer": true,
      "choice": [
        {'answer': '1 am', 'pathSound': 'assets/audios/sound1.wav'},
        {'answer': '9 pm', 'pathSound': 'assets/audios/sound1.wav'},
        {'answer': '3 am', 'pathSound': 'assets/audios/sound1.wav'},
        {'answer': '4 pm', 'pathSound': 'assets/audios/sound1.wav'},
      ],
      "answer": '9 am \n9 โมงเช้า',
      "correctAnswer": 2,
    },
    {
      "sentence": 'What time do you normally get up?\nปกติคุณตื่นนอนกี่โมง',
      "isServer": true,
      "choice": [
        {'answer': '1 am', 'pathSound': 'assets/audios/sound1.wav'},
        {'answer': '9 pm', 'pathSound': 'assets/audios/sound1.wav'},
        {'answer': '3 am', 'pathSound': 'assets/audios/sound1.wav'},
        {'answer': '4 pm', 'pathSound': 'assets/audios/sound1.wav'},
      ],
      "answer":
          'I usually get up at six on weekdays\nปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดา',
       "correctAnswer": 4,
    }
  ];

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
                width: currentChoice * 300 / dataful,
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
    // ฟังเสียงปกติ
    final listenButton = MaterialButton(
      onPressed: () {},
      child: Icon(
        Icons.volume_up,
        color: Color(0xffffffff),
      ),
      shape: CircleBorder(),
      minWidth: 20,
      color: Color(0xff01579b),
    );
    // ฟังเสียงคำตอบ
    final listenAnswerButton = isSendAnswer
        ? MaterialButton(
            onPressed: () {},
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
        message[currentChoice - 1]['sentence'],
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
          width: isSendAnswer ? null : 100,
          height: isSendAnswer ? null : 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            color: Color(0xffe0e0e0),
          ),
          child: isSendAnswer
              ? Container(
                  child: Text(
                    message[currentChoice - 1]['answer'],
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
  }

  Widget _choiceAnswerBox() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        width: 300,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 10.0),
          itemCount: message[currentChoice - 1]['choice'].length,
          itemBuilder: (BuildContext context, int index) {
            final List answer = message[currentChoice - 1]['choice'];
            final int correctAnswer =
                message[currentChoice - 1]['correctAnswer'];

            

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
                    onTap: () {},
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
                    answer[index]['answer'],
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
                    answer[index]['answer'],
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

  void sendAnswer() {
    setState(() {
      if (isSendAnswer == false) {
        isSendAnswer = true;
        print(selectAnswer);
      } else {
        isSendAnswer = false;
        currentChoice++;
        selectAnswer = 0;
      }
    });
  }

  void nextChoice() {
    setState(() {
      currentChoice++;
      selectAnswer = 0;
    });
  }

  Widget floatingNext() {
    return Container(
      width: 80,
      height: 45,
      child: MaterialButton(
        color: Colors.white,
        onPressed: selectAnswer == 0 && !isSendAnswer ? null : sendAnswer,
        child: Text(
          'ถัดไป',
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _myAppBar(),
          body: Column(
            children: <Widget>[_questionsBox(), _choiceAnswerBox()],
          ),
          floatingActionButton: floatingNext()),
    );
  }
}
