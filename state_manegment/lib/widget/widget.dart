import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color boxColor;
  final String boxName;

  const ButtonWidget(
      {super.key, required this.boxColor, required this.boxName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
        boxName,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      )),
    );
  }
}
