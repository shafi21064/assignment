import 'package:flutter/material.dart';

class TextMedium extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize, height;
  const TextMedium({
    super.key,
    required this.text,
    this.color,
    required this.fontSize,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'RobotoMedium',
        fontSize: fontSize,
        height: height
      ),
    );
  }
}
