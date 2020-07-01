import 'package:flutter/material.dart';

class ExpandedContainer extends StatelessWidget {
  ExpandedContainer({this.color, this.child, this.onTap, this.flex});

  final Color color;
  final Widget child;
  final Function onTap;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color ?? Color(0xFF1D1F33),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
      ),
    );
  }
}
