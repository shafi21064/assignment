import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class CommentsApiProvider extends ChangeNotifier {
  dynamic baseUrl = 'https://jsonplaceholder.typicode.com/comments';

  void getCommentsResponse ()async{
    var response = await http.get(Uri.parse(baseUrl));
    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
      print(jsonData[0]["email"]);
    }
  }
}