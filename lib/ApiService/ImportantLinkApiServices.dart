import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

import '../Model/modelLogin.dart';
import '../Utils/Global.dart';
import '../common/constant.dart';



class ImportantLinkApiServices{


  static const String url = baseURL + "api/flutterapi/importantlinkApi.php";

  static Future  ImportantLinkApiCall(BuildContext context, String catid,String subcatid) async {
    try {
      Map<String, String> params = {"catid": catid,"subcatid":subcatid};

      final response =
      await http.post(Uri.parse(url), body: params).timeout(const Duration(seconds: 30));
      print('${response.body.toString()}');
      var responseJson = json.decode(response.body.toString());
      if (response.statusCode == 200) {
        return  responseJson;
        //  return ModelMembersList.fromJson(json.decode(response.body.toString()));
      }
    }
    catch (e) {
      print("uuu+$e.toString()");
      Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);
      throw Exception('Failed to load post');
    }
  }
}