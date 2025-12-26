import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class RegController {
  Future<void> createAccountFun() async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");
      var b = {
        "name": "MD REJA ",
        "phone": "01718608447",
        "email": "almialsama@gmail.com",
        "address": "Dinajpur ",
        "password": "12345678",
      };
      var h = {
        "Accept" : " application/json"
      };
      var reg = await http.post(uri, body: jsonEncode(b),headers: h);

      log("${reg.statusCode}");

      if (reg.statusCode == 201){
        log("Success");
      }else if (reg.statusCode == 422 ){
        log("Email OR Phone already taken");
      }
    } catch (r) {
      log("Error: $r");
    }
  }
}
