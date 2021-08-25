import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change password',style: TextStyle(fontSize: 16),),
        centerTitle: true,
        backgroundColor: Color(0xfff4f4f4),
      ),
    );
  }
}
