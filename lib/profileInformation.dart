import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit profile',style: TextStyle(fontSize: 16),),
        centerTitle: true,
        backgroundColor: Color(0xfff4f4f4),
      ),
    );
  }
}
