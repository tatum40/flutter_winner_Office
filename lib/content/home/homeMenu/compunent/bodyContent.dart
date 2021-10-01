import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/home/homeDetail.dart';
import 'package:flutter_winner_office/theme/color.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key, required this.i, required this.data})
      : super(key: key);

  final int i;
  final List data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[titleContent(context), selectContent()],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5.0),
          margin: EdgeInsets.only(top: 10.0),
          color: mcl17,
        ),
      ],
    );
  }

  Widget titleContent(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(data[i]['titleTh']),
              Text(data[i]['titleEng'])
            ],
          ),
        ),
        Container(
          child: MaterialButton(
            color: mcl1,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetail(),
              ),
            ),
            child: Row(
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget selectContent() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image.asset(data[i]['url1']),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(data[i]['detailTh1']),
                    Text(data[i]['detailEng1'])
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image.asset(data[i]['url2']),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(data[i]['detailTh2']),
                    Text(data[i]['detailEng2'])
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
