import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  String name, email, address, appTitile;
  UserDetailsScreen(
      {super.key,
      required this.name,
      required this.email,
      required this.address,
        required this.appTitile
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitile),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          height: 400,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              color: Colors.lightGreen.withOpacity(.7),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Name:- ',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal))
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: 'Email:- ',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: email,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal))
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: 'Address:- ',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: address,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
