import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

class HorizonScroll extends StatelessWidget {
  const HorizonScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          for (var i = 0; i < 4; i++)
            Container(
              margin: EdgeInsets.all(10.0),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: mcl6,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
        ],
      ),
    );
  }
}