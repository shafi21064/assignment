import 'package:flutter/material.dart';
import 'package:portfoilo_app/pages/account_page.dart';
import 'package:portfoilo_app/pages/navigation.dart';
import 'package:portfoilo_app/pages/academic_page.dart';
import 'package:portfoilo_app/provider/info_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => InfoProvider()),
    ],
    child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountPage(),
    );
  }
}
