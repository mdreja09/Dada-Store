import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class RegController {
  Future<void> createAccountFun( {required Map data}) async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");

      var h = {"Accept": " application/json"};
      var reg = await http.post(uri, body: data, headers: h);

      log("${reg.statusCode}");

      if (reg.statusCode == 201) {
        log("Success");
      } else if (reg.statusCode == 422) {
        log("Email OR Phone already taken");
        var e = jsonDecode(reg.body);

        if (e["errors"]["phone"] != null) {
          log("Your Phone Already taken");
        } else
          ("Email already taken");

        log("${e["errors"]["phone"]} != null");
        log("${e["errors"]["email"]} != null");
      }
    } catch (r) {
      log("Error: $r");
    }
  }
}
