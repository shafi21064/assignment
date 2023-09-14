import 'dart:convert';
import 'package:api_fetching/Models/first_test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
   HomePage({super.key});

  var apiData = [];

  Future<List<dynamic>> getApiData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200){
      for(Map<String, dynamic> i in data){
        apiData.add(ApiTest.fromJson(i));
      }
      return apiData;
    }else{

      return apiData;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Fetching'),
      ),
      body:FutureBuilder(
        future: getApiData(),
        builder: (context, snapshop){
          if(!snapshop.hasData){
            return Text('loading');
          }else{
            return ListView.builder(
              itemCount: apiData.length,
                itemBuilder: (context, index){
                  return Text(index.toString());
                });
          }
        },
      )
    );
  }
}
