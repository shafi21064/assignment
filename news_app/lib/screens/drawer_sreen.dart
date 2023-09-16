import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            currentAccountPicture: Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
              accountName: const Text('Md Shadikul Islam Shafi'),
              accountEmail: const Text('mdshadikulislamshafi@gmail.com'),
          ),
          const ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('Home'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.explore_rounded),
            title: Text('Comments'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Users'),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
