import 'package:flutter/material.dart';

class CommentsDetailsScreen extends StatelessWidget {
  String name, email,body;
  CommentsDetailsScreen({
    super.key,
    required this.name,
    required this.email,
    required this.body
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments Details'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          height: 400,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: Colors.lightGreen.withOpacity(.7),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Name: ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                      )
                    )
                  ]
                ),
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                    text: 'Email: ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                          text: email,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal
                          )
                      )
                    ]
                ),
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                    text: 'Comment: ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                          text: body,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal
                          )
                      )
                    ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
