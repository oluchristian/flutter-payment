import 'dart:convert';
import 'package:flutter_payment_app/data_model.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/services.dart' show rootBundle;

class DataServices{
  String  _baseUrl = 'http://paymentapp.test/api';

  
  Future<List<DataModel>> getUsers() async {
  var apiUrl = '/billinfo';

  http.Response response = await http.get(
    Uri.parse(_baseUrl + apiUrl)
  );

  try {
    if (response.statusCode == 200) {
      List<dynamic> list = await jsonDecode(response.body);
      print(list);
      return list.map((e) => new DataModel.fromJson(e)).toList();
    }else{
      print('something went wrong');
      return <DataModel>[];
    }
  } catch (e) {
    print(e);
    print('API request failed');
    return <DataModel>[];
  }
  //   var info = rootBundle.loadString("json/data.json");
  //   List<dynamic> list = json.decode(await info);
    
  //   return Future.delayed(Duration(seconds: 1),
  //   ()=> list.map((e) => e).toList()
  //   );
  }
}