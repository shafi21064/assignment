import 'package:flutter/material.dart';
import 'package:news_app/provider/comments_api_provider.dart';
import 'package:news_app/provider/post_api_provider.dart';
import 'package:news_app/screens/comments_details_screen.dart';
import 'package:news_app/screens/details_screen.dart';
import 'package:provider/provider.dart';
import 'screens/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ApiProvider()),
      ChangeNotifierProvider(create: (_)=> CommentsApiProvider()),

    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigation(),
      ),
    );
  }
}
