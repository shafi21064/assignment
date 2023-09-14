import 'package:api_fetching/pages/comments_api_fetch.dart';
import 'package:api_fetching/pages/home_page.dart';
import 'package:api_fetching/pages/api_fetch.dart';
import 'package:api_fetching/pages/sign_up_page.dart';
import 'package:api_fetching/providers/album_provider.dart';
import 'package:api_fetching/providers/comments_provider.dart';
import 'package:api_fetching/providers/photos_provider.dart';
import 'package:api_fetching/providers/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> PostApiProvider()),
      ChangeNotifierProvider(create: (_)=> CommentsApiProvider()),
      ChangeNotifierProvider(create: (_)=> AlbumApiProvider()),
      ChangeNotifierProvider(create: (_)=> PhotosApiProvider()),

    ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    ),
    );
      
    
  }
}
