import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AlbumApiProvider extends ChangeNotifier{
  dynamic baseUrl = 'https://jsonplaceholder.typicode.com/albums';

 dynamic _apiResponse;

 get jsonData => _apiResponse;

  Future<void> getAlbumResponse ()async{
    var response = await http.get(Uri.parse(baseUrl));
    if(response.statusCode == 200){
      _apiResponse = jsonDecode(response.body);
      print(_apiResponse);
    }
  }
}