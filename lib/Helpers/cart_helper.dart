import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class Cart_helper {
  Cart_helper._();
  static final Cart_helper cart_helper = Cart_helper._();

  String api = "https://dummyjson.com/products?limit=100";

  Future<Map> getApi() async {
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      return data;
    } else {
      return {
        'msg': 'Something unknown Error ! Please Try again later',
      };
    }
  }
}
