import 'package:bmi_calculator/screens//input_page.dart';
import 'package:bmi_calculator/screens//result_page.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFF090C22);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
//      home: InputPage(),
    );
  }
}
