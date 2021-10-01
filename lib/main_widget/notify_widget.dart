import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';

//notify show
void dialogNotify(context, msn) {
  showGeneralDialog(
    barrierLabel: "label",
    barrierDismissible: false,
    barrierColor: Colors.white.withOpacity(0),
    transitionDuration: Duration(milliseconds: 800),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      });
      return Material(
        type: MaterialType.transparency,
        child: new Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            width: 300,
            height: 60,
            margin: EdgeInsets.only(top: 40.0),
            decoration: BoxDecoration(
              color: mcl40.withOpacity(0.9),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                msn,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, -1), end: Offset(0, 0)).animate(anim1),
        child: child,
      );
    },
  );
}
