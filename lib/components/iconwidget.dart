import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class iconWidget extends StatelessWidget {
  iconWidget({this.Icongender, this.label});
  final IconData? Icongender;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icongender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label.toString(), style: Ktextstyle),
      ],
    );
  }
}
