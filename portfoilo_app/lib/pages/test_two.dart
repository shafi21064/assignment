import 'package:flutter/material.dart';

class TestTwo extends StatelessWidget {
  const TestTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 250,
          //width: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
