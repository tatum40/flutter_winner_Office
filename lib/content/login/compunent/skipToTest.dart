import 'package:flutter/material.dart';
import 'package:flutter_winner_office/test.dart';
import 'package:flutter_winner_office/theme/color.dart';

class SkipToTest extends StatelessWidget {
  const SkipToTest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 35,
      child: MaterialButton(
        color: Colors.white,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TestPage(),
          ),
        ),
        child: Text(
          'Skip',
          style: TextStyle(
            color: mcl1,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: mcl1, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
