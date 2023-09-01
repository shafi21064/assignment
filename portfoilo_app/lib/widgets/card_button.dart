import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {

  final imageIcon;
  String textInfo;

CardButton({Key? key,
  required this.imageIcon,
  required this.textInfo
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.white,
        elevation: 10,
        shadowColor: Colors.blue,
        child: Column(
          children: [
            Image.asset(imageIcon, height: 120,),
            Text(
              textInfo,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}


