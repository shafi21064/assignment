import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd0e0f2),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Md Shadikul Islam Shafi",
                      style: TextStyle(
                          color: Color(0xff445771),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "App Developer",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xff7c97bf),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  const Image(
                    image: AssetImage('assets/images/profile.png'),
                  ),
                  Positioned(
                    top: 300,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 350,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Color(0xfff5f9fc),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Can I help you?'),
                                  Text("Let's Work? ")
                                ],
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Contact me'))
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 150,
                            //width: 500,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                ),
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
