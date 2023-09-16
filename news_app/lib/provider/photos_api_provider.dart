import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotosApiProvider extends ChangeNotifier{
  dynamic url = 'https://jsonplaceholder.typicode.com/photos';

  dynamic _photosApiResponse = [];

  get photosApiResponse => _photosApiResponse;

  Future<void> getPhotosResponse () async {
    var response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      _photosApiResponse = jsonDecode(response.body);
      print(_photosApiResponse);
    }
  }
}