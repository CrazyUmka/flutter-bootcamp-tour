import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            NoteWidget(Audio('assets/note1.wav'), Colors.red),
            NoteWidget(Audio('assets/note2.wav'), Colors.orange),
            NoteWidget(Audio('assets/note3.wav'), Colors.yellow),
            NoteWidget(Audio('assets/note4.wav'), Colors.green),
            NoteWidget(Audio('assets/note5.wav'), Colors.green[900]),
            NoteWidget(Audio('assets/note6.wav'), Colors.blue),
            NoteWidget(Audio('assets/note7.wav'), Colors.purple),
          ],
        )),
      ),
    );
  }
}

class NoteWidget extends StatelessWidget {
  final Audio note;
  final Color color;

  NoteWidget(this.note, this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(this.note);
        },
        color: color,
      ),
    );
  }
}
