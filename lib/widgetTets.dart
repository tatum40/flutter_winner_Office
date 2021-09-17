import 'package:flutter/material.dart';

Widget test2() {
  return Container(
    child: Text('test 2'),
  );
}

Widget test3(index) {
  return Container(
    width: 50,
    height: 120,
    child: Text(index),
    color: Colors.red,
  );
}
