import 'package:flutter/material.dart';
import 'package:portfoilo_app/pages/home_page.dart';
import 'package:portfoilo_app/pages/test.dart';
import 'package:portfoilo_app/pages/test_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
