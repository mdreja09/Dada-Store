import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginController {
  static Future<void> login({
    required String phone,
    required String pass,
  }) async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/login");

      var d = {"phone": "${phone}", "password": "${pass}"};
      var h = {"Accept": "application/json"};
      var res = await http.post(uri, body: d, headers: h);
      log("${phone} $pass}");

      log(" ${res.body}");

      if (res.statusCode == 200) {

        var data = jsonDecode(res.body)["token"];

        log("${res.body}");
        FlutterSecureStorage storage = FlutterSecureStorage();
        storage.write(key: 'token', value: data);
        EasyLoading.showError(" Login Success");


        //log("${jsonDecode(res.body)["token"]}");
      } else if (res.statusCode == 422) {
        EasyLoading.showError("Please enter phone and password");
      } else {
        EasyLoading.showError("Something wrong");
      }
    } catch (error) {
      log("error =  $error");
    }
  }
}
