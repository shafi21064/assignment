import 'package:flutter/material.dart';
import 'package:portfoilo_app/pages/account_page.dart';
import 'package:portfoilo_app/pages/navigation.dart';
import 'package:portfoilo_app/pages/academic_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
