import 'dart:convert';
import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class ProductGetController{
  Future<List> getProduct() async{
    try{
      Uri uri = Uri.parse("https://b4.coderangon.com/api/products");
      var res = await http.get(uri);

      if (res.statusCode == 200){
        log(" ${res.body}");

        var jsonData = jsonDecode(res.body);
        return jsonData['data'];

      } else{

        EasyLoading.showError("Product Data Field");

      }
    }catch(e){
      log(" Error: $e");
    }
    return [];
  }
}