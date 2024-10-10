import 'package:flutter/material.dart';

TextStyle getTextStyle(
    {double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black}) {
  return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
}
