import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CountTestProvider with ChangeNotifier {
  var _count = 0;

  get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
