
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CommentsApiProvider extends ChangeNotifier{
  dynamic url = 'https://jsonplaceholder.typicode.com/comments';

  dynamic _commentsApiResponse = [];

  get commentsApiResponse => _commentsApiResponse;

  Future<void> getCommentsResponse ()async{
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      _commentsApiResponse = jsonDecode(response.body);
      print(_commentsApiResponse);
    }
  }
}