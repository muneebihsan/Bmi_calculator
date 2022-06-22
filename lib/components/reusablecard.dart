import 'package:flutter/material.dart';

class Reusable_Container extends StatelessWidget {
  final Color? colour;
  final Widget? childCard;
  final Function()? onPress;
  Reusable_Container({@required this.colour, this.childCard, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
