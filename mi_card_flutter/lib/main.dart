import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage("images/i.jpg"),
            ),
            Text("Grigory Vydrin",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Norican', fontSize: 50)),
            Text("FULLSTACK DEVELOPER",
                style: TextStyle(
                    color: Colors.teal[100],
                    fontFamily: 'Orbitron',
                    fontSize: 20,
                    letterSpacing: 2.5)),
            SizedBox(
                height: 20,
                width: 150,
                child: Divider(color: Colors.teal[100])),
            InfoWidget(Icons.phone, '+7 (916) 431-29-00'),
            InfoWidget(Icons.email, 'grigoryvydrin@gmail.com'),
          ],
        )),
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  InfoWidget(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(text,
            style: TextStyle(
                fontFamily: 'Orbitron', fontSize: 18, color: Colors.teal[900])),
      ),
//      child: Padding(
//        padding: EdgeInsets.all(10.0),

//        child: Row(
//          children: <Widget>[
//            Icon(
//              icon,
//              color: Colors.teal,
//            ),
//            SizedBox(width: 10),
//            Text(
//              text,
//              style: TextStyle(
//                  fontFamily: 'Orbitron',
//                  fontSize: 20,
//                  color: Colors.teal[900]),
//            ),
//          ],
//        ),
//      ),
    );
  }
}
