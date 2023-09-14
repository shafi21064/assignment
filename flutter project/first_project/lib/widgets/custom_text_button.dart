import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {

  String buttonName;

   CustomTextButton({super.key, required this.buttonName, });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.topLeft,
        child: TextButton(
            onPressed: (){
              debugPrint('working');
            },
            child: Text(
                '$buttonName',
              style: TextStyle(color: Colors.black45),
            )));
  }
}
