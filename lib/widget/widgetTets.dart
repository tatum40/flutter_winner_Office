import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

Widget test2() {
  return Container(
    child: Text('test 2'),
  );
}

AssetsAudioPlayer audio = new AssetsAudioPlayer();

void play() async {

  try {
    await audio.open(Audio.network(" http://codeskulptor-demos.commondatastorage.googleapis.com/descent/background%20music.mp3 "));
  } catch (e) {
  }
  
}

void pauseAudio() {
  audio.pause();
}

void stopAudio() {
  audio.stop();
}

Widget test3(index) {
  return Column(
    children: <Widget>[
      Container(
        width: 120.0,
        height: 80.0,
        margin: EdgeInsets.only(top: 50.0),
        child: MaterialButton(
          onPressed: () => play(),
          child: Text('play audio'),
          color: Colors.lightBlue[400],
        ),
      ),
      Container(
        width: 120.0,
        height: 80.0,
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: MaterialButton(
          onPressed: () => pauseAudio(),
          child: Text('pause audio'),
          color: Colors.lightGreen[400],
        ),
      ),
      Container(
        width: 120.0,
        height: 80.0,
        child: MaterialButton(
          onPressed: () => stopAudio(),
          child: Text('stop audio'),
          color: Colors.red[400],
        ),
      ),
    ],
  );
}
