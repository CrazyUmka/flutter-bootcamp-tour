import 'package:bmi_calculator/components//expanded_container.dart';
import 'package:bmi_calculator/components//round_icon_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputValueWidget extends StatelessWidget {
  InputValueWidget(
      {@required this.label,
      @required this.value,
      @required this.decrease,
      @required this.increase});

  final String label;
  final int value;
  final Function decrease;
  final Function increase;

  @override
  Widget build(BuildContext context) {
    return ExpandedContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Text(
            value.toString(),
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: decrease,
              ),
              SizedBox(
                width: 15.0,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: increase,
              ),
            ],
          )
        ],
      ),
    );
  }
}
