import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class PhotosApiProvider extends ChangeNotifier{
  dynamic baseUrl = 'https://jsonplaceholder.typicode.com/photos';

  void getPhotosResponse ()async {
    var response = await http.get(Uri.parse(baseUrl));

    if(response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
    }
  }
}