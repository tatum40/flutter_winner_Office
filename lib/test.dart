import 'package:flutter/material.dart';
import 'package:flutter_winner_office/widget/widget_function.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('page test'),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: test(),
              ),
              Expanded(
                flex: 3,
                child: test(),
              ),
              Expanded(
                flex: 1,
                child: test(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
