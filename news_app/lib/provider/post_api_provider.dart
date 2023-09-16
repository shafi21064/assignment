import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends ChangeNotifier{

dynamic baseUrl = 'https://jsonplaceholder.typicode.com/';

dynamic _apiResponse = [];

get apiResponse => _apiResponse;

Future<void> getPostResponse (endPoint)async{
  var response = await http.get(Uri.parse(baseUrl+endPoint));

  if(response.statusCode == 200){
    _apiResponse = jsonDecode(response.body);
    print(_apiResponse);
  }
}

}