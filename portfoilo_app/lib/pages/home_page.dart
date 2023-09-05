import 'package:flutter/material.dart';
import 'package:portfoilo_app/pages/academic_page.dart';
import 'package:portfoilo_app/pages/drawer_page.dart';
import 'package:portfoilo_app/pages/info_page.dart';
import 'package:portfoilo_app/widgets/card_button.dart';
import 'package:portfoilo_app/widgets/rich_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffd0e0f2),
        appBar: AppBar(
          elevation: 0,
        ),
        drawer: DrawerPage(),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60))),
                ),
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            minRadius: 30,
                            maxRadius: 40,
                            backgroundColor: Color(0xffd0e0f2),
                            backgroundImage: AssetImage(
                              'assets/images/profile.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichTextWidget(
                                  title: 'Name:',
                                  subtitle: 'Md Shadikul Islam Shafi',
                                ),
                                RichTextWidget(title: 'Roll:', subtitle: '114097'),
                                RichTextWidget(
                                    title: 'Department',
                                    subtitle: 'Computer Technology')
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentInfoPage()));
                    },
                    child: CardButton(
                        imageIcon: 'assets/images/profile.png',
                        textInfo: "Studen't Info"),
                  ),
                  CardButton(
                      imageIcon: 'assets/images/profile.png',
                      textInfo: 'Book list'),
                  CardButton(
                      imageIcon: 'assets/images/profile.png',
                      textInfo: 'Semester Plan'),
                  CardButton(
                      imageIcon: 'assets/images/profile.png',
                      textInfo: 'Academic'),
                  GestureDetector(
                    onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> AcademicPage()));},
                    child: CardButton(
                        imageIcon: 'assets/images/profile.png',
                        textInfo: 'Result'),
                  ),
                  CardButton(
                      imageIcon: 'assets/images/profile.png',
                      textInfo: 'Account')
                ],
              ),
            )
          ],
        ));
  }
}
