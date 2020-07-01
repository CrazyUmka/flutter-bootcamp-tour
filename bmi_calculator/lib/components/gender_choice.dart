import 'package:bmi_calculator/components//expanded_container.dart';
import 'package:bmi_calculator/components//icon_content.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderChoice extends StatelessWidget {
  GenderChoice({this.value, this.onChanged});

  final Gender value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          ExpandedContainer(
            color: this.value == Gender.male
                ? Color(0xFF1D1E33)
                : Color(0xFF111328),
            onTap: () {
              onChanged(Gender.male);
            },
            child: IconContent(
              icon: FontAwesomeIcons.mars,
              label: 'МУЖЧИНА',
            ),
          ),
          ExpandedContainer(
            color: this.value == Gender.female
                ? Color(0xFF1D1E33)
                : Color(0xFF111328),
            onTap: () {
              onChanged(Gender.female);
            },
            child: IconContent(
              icon: FontAwesomeIcons.venus,
              label: 'ЖЕНЩИНА',
            ),
          ),
        ],
      ),
    );
  }
}
