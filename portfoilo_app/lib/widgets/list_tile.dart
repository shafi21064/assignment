import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 12),
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color(0xff445771)),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(40)
      ),
      child: ListTile(
        leading: Image.asset('assets/images/profile.png'),
        title: Text('Md Shadiku Islam Shafi'),
        subtitle: Text('114097'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
