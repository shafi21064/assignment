import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/pages/test.dart';

class CountTestProvider with ChangeNotifier {
  var _count = 0;

  get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void information() {
    _count++;
    notifyListeners();
  }

  dynamic infoList = [
    {
      'id': 1,
      'name': 'Shafi',
      'roll': '114097',
      'deparment': 'Computer',
      'shift': '2nd'
    },
    {
      'id': 2,
      'name': 'Rahat',
      'roll': '416116',
      'deparment': 'Computer',
      'shift': '2nd'
    },
    {
      'id': 3,
      'name': 'Niamul',
      'roll': '114099',
      'deparment': 'Computer',
      'shift': '2nd'
    }
  ];
}
