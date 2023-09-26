import 'package:flutter/material.dart';
import 'package:news_app/screens/bottom_navigation.dart';
import 'package:news_app/screens/comments_screen.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/log_In.dart';
import 'package:news_app/screens/user_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            currentAccountPicture: Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
              accountName: const Text('Md Shadikul Islam Shafi'),
              accountEmail: const Text('mdshadikulislamshafi@gmail.com'),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10) )
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> BottomNavigation()), (route) => false);
            },
            child: const ListTile(
              leading: Icon(Icons.home_filled),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CommentsScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.explore_rounded),
              title: Text('Comments'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> UserScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Users'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (contex)=> LogInPage()), (route) => false);
            },
            child: const ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Log Out'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      ),
    );
  }
}
