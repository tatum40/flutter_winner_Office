import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
import '../lesson/speaking.dart';
import '../lesson/multipleChoice.dart';

class HomeLesson extends StatelessWidget {
  const HomeLesson({
    Key? key,
    required this.titleEng,
    required this.titleTh,
  }) : super(key: key);

  final titleEng;
  final titleTh;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                headerBox(context),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      lessonBox(context, 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          lessonBox(context, 2),
                          lessonBox(context, 3),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget headerBox(context) {
    return Container(
      color: Colors.white,
      height: 170,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back),
              ),
            ],
          ),
          Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  titleEng,
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    titleTh,
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget lessonBox(context, num) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 125,
                height: 170,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 4, color: num != 3 ? mcl19 : mcl20),
                    color: Colors.white),
                child: MaterialButton(
                  shape: CircleBorder(),
                  color: Colors.white,
                  onPressed: () {
                    if (num == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Speaking()));
                    } else if (num == 3) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Multiple()));
                    }
                  },
                  child: num == 1
                      ? Image.asset('assets/images/expression.png')
                      : num == 2
                          ? Image.asset('assets/images/speaking.png')
                          : Image.asset('assets/images/practice.png'),
                ),
              ),
              Positioned(
                child: star(num),
                left: 23.0,
                top: 132.0,
              ),
            ],
          ),
          Container(
            child: Text(
              num == 1
                  ? 'Expression'
                  : num == 2
                      ? 'Speaking'
                      : 'Pratice',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  Widget star(num) {
    if (num != 1) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  left: 1.0,
                  top: 1.7,
                  child: Icon(
                    Icons.star,
                    color: Colors.black12,
                    size: 26,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: num < 3 ? mcl1 : mcl21,
                  size: 24,
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 1.0,
                  top: 1.7,
                  child: Icon(
                    Icons.star,
                    color: Colors.black12,
                    size: 32,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: num < 3 ? mcl1 : mcl21,
                  size: 30,
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 1.0,
                  top: 1.7,
                  child: Icon(
                    Icons.star,
                    color: Colors.black12,
                    size: 26,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: num < 3 ? mcl1 : mcl21,
                  size: 24,
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
