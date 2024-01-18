import 'package:flutter/material.dart';

class TextRegular extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize, height;
  const TextRegular({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: 'RobotoRegular',
        fontSize: fontSize,
      ),
    );
  }
}
