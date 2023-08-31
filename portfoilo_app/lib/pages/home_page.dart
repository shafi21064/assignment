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
            Expanded(
              child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: 0,
                      child: Image(
                        height: 400,
                        image: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),
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
                                    Text(
                                        'Can I help you?',
                                      style: TextStyle(
                                        color: Color(0xff445771),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                        "Let's Work? ",
                                      style: TextStyle(
                                        color: Color(0xff7c97bf),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      debugPrint('working');
                                    },
                                    child: const Text('Contact me'))
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 160,
                              //width: 500,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 35,
                                        left: 10
                                    ),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfff197bc),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Name: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Md Shadikul Islam Shafi',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 35,
                                        left: 10
                                    ),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff7cc8d2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Position: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Mobile Application Developer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 35,
                                      left: 10,
                                    ),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff96b0ee),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Education: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Diploma in Computer Engineering',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 35,
                                      left: 10,
                                    ),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff5199e4),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('GPA: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          ' I have got: \n 3.91',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
