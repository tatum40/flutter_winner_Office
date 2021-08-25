import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact us',style: TextStyle(fontSize: 16),),
        centerTitle: true,
        backgroundColor: Color(0xfff4f4f4),
      ),
    );
  }
}
