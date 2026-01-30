import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class SellingTypeController{
  Future<Map> getSellingTypeData() async{
    try{
      Uri  uri = Uri.parse("https://b4.coderangon.com/api/home-produtcs");
      var res = await http.get(uri);
      if(res.statusCode== 200){
        return (jsonDecode(res.body)['data']);

      }

    }catch(e){
      log("Error: $e");
    }
    return {};
  }


}