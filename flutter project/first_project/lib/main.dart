import 'package:first_project/pages/home_Page.dart';
import 'package:first_project/pages/log_In.dart';
import 'package:first_project/widgets/custom_button.dart';
import 'package:first_project/widgets/custom_text_button.dart';
import 'package:first_project/widgets/input_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}
