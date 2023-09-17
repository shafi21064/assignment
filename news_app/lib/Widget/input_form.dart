import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  String boxHintText;
  bool obsecureTxt;
  final controller;


  InputForm({super.key, required this.boxHintText, required this.obsecureTxt, required this.controller, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: boxHintText,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black26, width: 2),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(20))),
        obscureText: obsecureTxt,
        obscuringCharacter: '*',

      ),
    );
  }
}
