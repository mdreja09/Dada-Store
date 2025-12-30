
import 'dart:developer';

import 'package:http/http.dart' as http;

class LoginController{
  Future <void> login() async{
  try{
  Uri uri = Uri.parse("https://b4.coderangon.com/api/login");

  var d = {
    "phone": "phone",
  "password": " pass"

  };
  var h ={
    "Accept" : "application/json"
  };
  var res = await http.post(uri, body: d,headers: h);

  } catch(error){
  log("error =  $error");
  }
  }
}