import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/expanded_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BMIResult bmi = ModalRoute.of(context).settings.arguments;
    print(bmi.result);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Калькулятор'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Ваш Результат',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ExpandedContainer(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  bmi.getStatus().toUpperCase(),
                  style: TextStyle(
                    color: Color(0xFF24D876),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bmi.getResult(),
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bmi.getInterpretation(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'ПЕРЕСЧИТАТЬ',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
