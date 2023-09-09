import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/pages/bio_data.dart';
import 'package:state_manegment_test/pages/conter_page.dart';
import 'package:state_manegment_test/pages/grid_view_info.dart';
import 'package:state_manegment_test/pages/info_show.dart';
import 'package:state_manegment_test/provider/count_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountTestProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InfoShow(),
      ),
    );
  }
}
