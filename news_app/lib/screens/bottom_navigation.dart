import 'package:flutter/material.dart';
import 'package:news_app/screens/comments_screen.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/user_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  static const pages = [HomeScreen(),CommentsScreen(), UserScreen()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore_rounded), label: 'Comments'),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: 'Users')
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
