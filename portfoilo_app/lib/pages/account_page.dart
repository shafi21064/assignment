import 'package:flutter/material.dart';
import 'package:portfoilo_app/provider/info_provider.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<InfoProvider>(context);

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
             Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${provider.infoList[0]['name']}",
                      style: const TextStyle(
                          color: Color(0xff445771),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                     Text(
                      "${provider.infoList[0]['position']}",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
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
                     Positioned(
                      top: 0,
                      child: Image(
                        height: 400,
                        image: AssetImage(
                          '${provider.infoList[0]['image']}',
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Let's Work? ",
                                      style: TextStyle(
                                          color: Color(0xff7c97bf),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
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
                                        top: 35, left: 10),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfff197bc),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Name: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          '${provider.infoList[0]['name']}',
                                          style: const TextStyle(
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
                                        top: 35, left: 10),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff7cc8d2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Position: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          '${provider.infoList[0]['position']}',
                                          style: const TextStyle(
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
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Education: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          '${provider.infoList[0]['education']}',
                                          style: const TextStyle(
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
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('GPA: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          ' I have got: \n ${provider.infoList[0]['gpa']}',
                                          style: const TextStyle(
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
