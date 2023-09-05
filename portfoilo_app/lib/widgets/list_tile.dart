import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {

  final String semesterName, gpa;

  const ListTileWidget({super.key, required this.semesterName, required this.gpa});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 12),
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color(0xff7cc8d2)),
          color: Color(0xff5199e4),
          borderRadius: BorderRadius.circular(40)
      ),
      child: ListTile(
        leading: Image.asset('assets/images/profile.png'),
        title: Text('$semesterName'),
        subtitle: Text('Gpa: $gpa'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
