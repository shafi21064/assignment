import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 500,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
