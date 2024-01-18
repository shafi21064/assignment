import 'package:flutter/material.dart';


class TextBold extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize, height;
  const TextBold({
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
      style: TextStyle(
        color: color,
        fontFamily: 'RobotoBold',
        fontSize: fontSize,
        height: height
      ),
    );
  }
}
