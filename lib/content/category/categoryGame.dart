import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

class CategoryGame extends StatelessWidget {
  const CategoryGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mcl17,
        appBar: AppBar(
          title: Text('เกม'),
          centerTitle: true,
          backgroundColor: mcl10,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                for (var i = 0; i < 2; i++) _boxContent(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _boxContent(context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.symmetric(vertical: 2.0),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('เกมเกี่ยวกับสำนวน'),
                    Text(
                      'Idiom games',
                    ),
                  ],
                ),
              ),
              Container(
                child: MaterialButton(
                  color: mcl1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                for (var i = 0; i < 2; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 160,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: mcl6,
                        ),
                        child: Icon(
                          Icons.image_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text('ชื่อเกม'),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
