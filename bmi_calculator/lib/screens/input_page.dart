import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/components//bottom_button.dart';
import 'package:bmi_calculator/components//expanded_container.dart';
import 'package:bmi_calculator/components//gender_choice.dart';
import 'package:bmi_calculator/components//input_value_widget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  int weight = 70;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Калькулятор'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GenderChoice(
            value: gender,
            onChanged: (Gender gender) {
              setState(() {
                this.gender = gender;
              });
            },
          ),
          ExpandedContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'РОСТ',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'см',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    thumbColor: Color(0xFFEA1556),
                    overlayColor: Color(0x29EA1556),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double height) {
                      setState(() {
                        this.height = height.round();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                InputValueWidget(
                  label: 'ВЕС',
                  value: weight,
                  decrease: () {
                    setState(() {
                      weight--;
                    });
                  },
                  increase: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
                InputValueWidget(
                  label: 'ВОЗРАСТ',
                  value: age,
                  decrease: () {
                    setState(() {
                      age--;
                    });
                  },
                  increase: () {
                    setState(() {
                      age++;
                    });
                  },
                )
              ],
            ),
          ),
          BottomButton(
            label: 'РАСЧИТАТЬ',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/result',
                arguments: BMIResult(weight: weight, height: height),
              );
            },
          )
        ],
      ),
    );
  }
}
