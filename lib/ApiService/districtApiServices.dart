import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

import '../common/constant.dart';

import '../model/modelDistrict.dart';


class DistrictApiServices{
  static const String url = baseURL + "api/districtlist_api.php";

  static Future<ModelDistrict>  districtApiCall(
      BuildContext context) async {
    try {

      final response =
      await http.post(Uri.parse(url)).timeout(const Duration(seconds: 30));

      print(response.body);
      if (response.statusCode == 200) {
        return ModelDistrict.fromJson(json.decode(response.body));
      }
      throw Exception('Failed to load post');
    } catch (e) {
      print("uuu+$e.toString()");
      Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);
      throw Exception('Failed to load post');
    }

  }
}
