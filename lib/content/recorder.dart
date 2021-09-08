import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

class Recorder extends StatefulWidget {
  const Recorder({Key? key}) : super(key: key);

  @override
  _RecorderState createState() => _RecorderState();
}

class _RecorderState extends State<Recorder> {
  List<dynamic> messages = [
    {
      "messageContent": "What time do you normally get up?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "I usually get up at six on weekdays and around 9 at weekends.,",
      "messageType": "sender",
      "messageImage":
          "https://image.shutterstock.com/image-illustration/realistic-3d-render-wall-clock-260nw-301318790.jpg"
    },
    {
      "messageContent": "What do you usually have for breakfast?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "I usually skip breakfast, but i always have a strong black coffee without sugar to start the day.",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "How do you get to work?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "I usually drive, but sometims i cycle if i have the time.",
      "messageType": "sender",
      "messageImage":
          "https://images.immediate.co.uk/production/volatile/sites/21/2020/11/Wilier-Filante-SLR-02-b60dbd8.jpg?quality=90&resize=620,413"
    },
    {
      "messageContent": "How long does it take?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "About half an hour by car, and just over an hour by bike.",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "What hours do you work?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent": "9 to 5, Monday to Friday, Pretty standard really.",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "Do you get any coffee breaks",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "Yes, we get fifteen minutes at mid-morning and another fifteen minutes mid-afternoon",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "And how about lunch?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent": "We get an hour for lunch.",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "Do you usually go out for lunch?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "Sometims i go out for lunch with my colleagues, buy most of the time i eat a packed lunch at my desk",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "What time do you leave the office?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent": "A little after 5 on most days.",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "What time do you normally get home?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "It depends on the traffic. if it's quiet just after 6, but there's normally a lot of traffic, so just before 6.30",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "Do you usually cook in the evenings?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "No, my husband does. But if he's too tried we'll order a takeaway, apizza, a Chinese or an indian.",
      "messageType": "sender",
      "messageImage": ""
    },
    {
      "messageContent": "And what do you do to relax in the evening?",
      "messageType": "receiver",
      "messageImage": ""
    },
    {
      "messageContent":
          "I like to watch the news and catch up on my soaps. My husband always takes the dogs for a walk and likes to read a lot too.",
      "messageType": "sender",
      "messageImage": ""
    },
  ];

  ScrollController _scrollController = new ScrollController();

  List<dynamic> showMessage = [];

  int currentIndex = 0;
  Future<void> nextChat() async {
    if (currentIndex < messages.length)
      setState(() {
        showMessage.add(messages[currentIndex]);
        currentIndex = currentIndex + 1;

        void scrollTo() {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          );
        }

        Timer(const Duration(milliseconds: 500), scrollTo);

        // var timer = new Timer(
        //   const Duration(microseconds: 10),
        //   scrollTo,
        // );

        // Future.delayed(const Duration(microseconds: 10000), scrollTo);
      });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversation"),
        actions: [
          ElevatedButton.icon(
            onPressed: nextChat,
            icon: Icon(FontAwesomeIcons.arrowRight),
            label: Text(''),
          )
        ],
      ),
      body: SafeArea(
        child: ChatBox(
            scrollController: _scrollController,
            showMessage: showMessage,
            screenWidth: screenWidth),
      ),
    );
  }
}

class ChatBox extends StatelessWidget {
  const ChatBox({
    Key? key,
    required ScrollController scrollController,
    required this.showMessage,
    required this.screenWidth,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List showMessage;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          controller: _scrollController,
          itemCount: showMessage.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          itemBuilder: (context, index) {
            return Container(
              padding:
                  EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment:
                    showMessage[index]['messageType'] == "receiver"
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment:
                        showMessage[index]['messageType'] == "receiver"
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: screenWidth - 100,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              (showMessage[index]['messageType'] == "receiver"
                                  ? Colors.grey.shade200
                                  : Colors.blue[200]),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                showMessage[index]['messageContent'],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            if (showMessage[index]['messageImage'] != '')
                              Image.network(showMessage[index]['messageImage'])
                          ],
                        ),
                      ),
                      if (showMessage[index]['messageType'] == 'sender')
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            child: Icon(
                              FontAwesomeIcons.user,
                              size: 18,
                            ),
                          ),
                        )
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: screenWidth - 100,
                    ),
                    padding: EdgeInsets.only(left: 8, right: 45),
                    child: Row(
                      mainAxisAlignment:
                          showMessage[index]['messageType'] == "receiver"
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          iconSize: 16,
                          splashRadius: 20,
                          icon: Icon(FontAwesomeIcons.volumeUp),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 16,
                          splashRadius: 20,
                          icon: Icon(FontAwesomeIcons.volumeDown),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
