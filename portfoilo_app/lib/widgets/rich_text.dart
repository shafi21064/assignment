import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {

  String title, subtitle ;

  RichTextWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        children:[
          TextSpan(text: '$title ', style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Color(0xffd0e0f2))),
          TextSpan(text: subtitle, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
