import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Magic Ball',
      home: MagicBallPage(),
    ));

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int decision = 1;

  void handleOnPressed() {
    setState(() {
      decision = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: handleOnPressed,
        child: Image.asset('images/ball$decision.png'),
      ),
    );
  }
}
