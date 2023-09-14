import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {

    ToastContext().init(context);

    return GestureDetector(
      onTap: (){
        Toast.show("Loged in", duration: Toast.lengthShort, gravity:  Toast.bottom);
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
              'Log In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
