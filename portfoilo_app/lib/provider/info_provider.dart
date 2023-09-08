import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class InfoProvider with ChangeNotifier{


  dynamic infoList = [
    {
      'name' : 'Md Shadikul Islam Shafi',
      'roll' : '114097',
      'position' : 'Mobile App Developer',
      'education' : 'Diploma in Engineering',
      'gpa' : '3.91',
      'image' : 'assets/images/profile.png'
    }
  ];

}