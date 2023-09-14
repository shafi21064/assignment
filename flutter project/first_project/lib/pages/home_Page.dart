import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(minRadius: 30,foregroundImage:NetworkImage('https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg'), ),
              Text('This is a home page')
            ],
          ),
        ),
      ),
    );
  }
}
