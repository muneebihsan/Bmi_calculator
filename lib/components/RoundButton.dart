import 'package:flutter/material.dart';
import 'constant.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.icon, this.Pressed});
  final IconData? icon;
  final Function()? Pressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: kSizeConstraints,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: Pressed,
    );
  }
}
