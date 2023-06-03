import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/services.dart' show rootBundle;

class DataServices{
  String  _baseUrl = 'http://paymentapp.test/api';
  Future<List<dynamic>> getUsers() async {
  var apiUrl = '/billinfo';

  http.Response response = await http.get(
    Uri.parse(_baseUrl + apiUrl)
  );

  try {
    if (response.statusCode == 200) {
      List<dynamic> list = await jsonDecode(response.body);
      print(list);
      return list.map((e) => e).toList();
    }else{
      print('something went wrong');
      return [];
    }
  } catch (e) {
    print(e);
    print('API request failed');
    return [];
  }
    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);
    
    return Future.delayed(Duration(seconds: 1),
    ()=> list.map((e) => e).toList()
    );
  }
}