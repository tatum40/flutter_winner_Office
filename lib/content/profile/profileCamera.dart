import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? image;
  Future pickerImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
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
            child: Column(
              children: <Widget>[
                _showImagePicker(),
                imagePickButton(Icon(Icons.photo_camera), "Pick Camera", 1),
                imagePickButton(Icon(Icons.image), "Pick Gallery", 2)
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 15.0),
          width: 120,
          height: 40,
          child: MaterialButton(
            onPressed: () => Navigator.pop(context , image),
            child: Text(
              "ยืนยัน",
              style: TextStyle(fontSize: 16),
            ),
            color: mcl1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _showImagePicker() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      width: 180,
      height: 180,
      color: mcl37,
      child: image != null
          ? Image.file(
              image!,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            )
          : Icon(
              Icons.image,
              color: mcl6,
            ),
    );
  }

  Widget imagePickButton(icon, textShow, numBtn) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 300,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: mcl6.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: () {
          if (numBtn == 1) {
            pickerImage(ImageSource.camera);
          } else {
            pickerImage(ImageSource.gallery);
          }
        },
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: icon,
            ),
            Container(child: Text(textShow))
          ],
        ),
      ),
    );
  }
}
