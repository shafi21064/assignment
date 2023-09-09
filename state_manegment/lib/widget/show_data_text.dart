import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/provider/count_test.dart';

class ShowTextData extends StatelessWidget {
  final String title, value;
  const ShowTextData({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CountTestProvider>(context);

    return Text(
      '$title: ${provider.infoList[provider.count][value]}',
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
