import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: const Text(
              'Md Shadikul Islam Shafi',
              style: TextStyle(fontSize: 16),
            ),
            accountEmail: const Text('mdshadikulislamshafi@gmail.com'),
            currentAccountPicture: Image.asset('assets/images/profile.png'),
          ),
          const ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('Home'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const ListTile(
            leading: Icon(Icons.bookmark_add_outlined),
            title: Text('Academic'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const ListTile(
            leading: Icon(Icons.login_outlined),
            title: Text('Log Out'),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
