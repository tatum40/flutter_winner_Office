import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? file;
  Future<Null> createAvatar({ImageSource? source}) async {
    try {
      var result = await ImagePicker()
          .getImage(source: source!, maxHeight: 800, maxWidth: 800);
      setState(() {
        file = File(result!.path);
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mcl10,
          title: Text('Select profile photo', style: TextStyle(fontSize: 16)),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: <Widget>[
                Container(
                  color: mcl6,
                  child: IconButton(
                    onPressed: () => createAvatar(source: ImageSource.camera),
                    icon: Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: mcl37,
                  child: file == null? IconButton(
                    onPressed: () => createAvatar(source: ImageSource.gallery),
                    icon: Icon(
                      Icons.image,
                      color: mcl6,
                    ),
                  ) :Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CameraOn extends StatelessWidget {
  const CameraOn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: double.infinity,
            margin: EdgeInsets.only(left: 25.0, right: 25.0),
            color: mcl24,
            child: Image.asset(
              'assets/images/cameraOn.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(right: 20.0),
          width: 80,
          height: 35,
          child: FloatingActionButton.extended(
            backgroundColor: mcl1,
            onPressed: () => Navigator.pop(context),
            label: Text('ถัดไป'),
          ),
        ),
      ),
    );
  }
}
