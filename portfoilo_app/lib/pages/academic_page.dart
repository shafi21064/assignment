import 'package:flutter/material.dart';
import 'package:portfoilo_app/widgets/list_tile.dart';

import '../widgets/rich_text.dart';

class AcademicPage extends StatelessWidget {
  const AcademicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd0e0f2),
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
                                  title: 'Department', subtitle: 'Computer Technology')
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTileWidget(),
                 ListTileWidget(),
                ListTileWidget(),
                ListTileWidget(),
                ListTileWidget(),
                ListTileWidget()

              ],
            ),
          )
        ],
      ),
    );
  }
}
