import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {@required this.name,
      this.borderRadius,
      this.fontSize,
      this.whenPressed,
      this.buttonColor});
  final double borderRadius;
  final String name;
  final double fontSize;
  final Function whenPressed;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        textColor: Colors.black,
        color: buttonColor,
        child: Text(
          name,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
        onPressed: whenPressed);
  }
}
