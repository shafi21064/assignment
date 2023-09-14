import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class PostApiProvider extends ChangeNotifier {

  dynamic baseUrl = "https://jsonplaceholder.typicode.com/todos/1";

  var _apiResponse;
  dynamic get  apiResponse => _apiResponse;


  //
  // void getMyResponse(responseData) {
  //   _apiResponse = responseData;
  //   notifyListeners();
  // }

  Future<void> getApiResponse ()async{
    var response = await http.get(Uri.parse(baseUrl));

    if(response.statusCode == 200){
      _apiResponse = jsonDecode(response.body);
      // getMyResponse(jsonResponse);
      print(_apiResponse);
    }

  }

}