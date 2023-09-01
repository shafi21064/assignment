import 'package:flutter/material.dart';
import 'package:portfoilo_app/pages/academic_page.dart';
import 'package:portfoilo_app/pages/account_page.dart';
import 'package:portfoilo_app/pages/home_page.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  static const pages = [HomePage(), AcademicPage(), AccountPage()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add_outlined),
              label: 'Academic'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
            label: 'Account'
          )
        ],

        onTap: (index) => setState(() {
          currentIndex = index;

        }),

      ),
      body: pages[currentIndex]
    );
  }
}
