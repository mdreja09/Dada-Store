

import 'dart:developer';
import 'package:http/http.dart' as http;

class  RegController{
  Future<void>createAccountFun()async{
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");
      var reg = await http.post(uri);
  }catch (r){
      log("Error: $r");


    }
  }
}