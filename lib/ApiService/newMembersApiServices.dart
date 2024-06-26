import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

import '../Utils/Global.dart';
import '../common/constant.dart';
class NewMembersApiService{
  static const String url = baseURL + "api/admin_newmemberslist_api.php";

  static Future MembersListApiCall(BuildContext context,{String? query}) async {
    try {
      final response =
      await http.get(Uri.parse(url), ).timeout(const Duration(seconds: 30));
      // print(response.body);
      print('NewMembers    ${response.body.toString()}');
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