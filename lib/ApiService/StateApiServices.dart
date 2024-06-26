import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

// import '../Utils/Global.dart';
import '../common/constant.dart';
import '../model/modelState.dart';


class StateApiServices{
  static const String url = baseURL + "api/statelist_api.php";

  static Future<ModelState> stateApiCall(
      BuildContext context) async {
    try {

      final response =
      await http.post(Uri.parse(url)).timeout(const Duration(seconds: 30));
      print(response.body);
      if (response.statusCode == 200) {
        return ModelState.fromJson(json.decode(response.body));
      }
      throw Exception('Failed to load post');
    } catch (e) {
      print("uuu+$e.toString()");
      Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);

      throw Exception('Failed to load post');
    }

  }
}