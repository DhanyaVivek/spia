import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import '../common/constant.dart';
import '../model/modelLogin.dart';

class LoginApiService {
  static const String url =  baseURL +"api/memberlogin_api.php";

  static Future<ModelLogin>  loginApiCall(

      BuildContext context, String mobile) async {
    ToastContext().init(context);
    try {
      Map<String, String> params = {"mobile": mobile};
     print('phone $mobile');
      // print('devicecode "abc123"');
      // final response =
      // await http.post( Uri.parse(baseURL + "api/memberlogin_api.php"), body: params).timeout(const Duration(seconds: 30));
      final response =
      await http.post(Uri.parse(url), body:json.encode(params)).timeout(const Duration(seconds: 30));

      print(response.body);
      if (response.statusCode == 200) {

        return ModelLogin.fromJson(json.decode(response.body));
      }
      throw Exception('Failed to load post');
    } catch (e) {
      print("uuu+$e.toString()");
      Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);
      throw Exception('Failed to load post');
    }

  }
}
