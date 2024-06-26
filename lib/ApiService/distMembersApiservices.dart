// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:toast/toast.dart';
//
// import '../Utils/Global.dart';
// import '../common/constant.dart';
// class ContactListApiService{
//   static const String url = baseURL + "api/flutterapi/contactlistApi.php";
//
//   static Future ContactListApiCall(BuildContext context, String userid) async {
//     try {
//       Map<String, String> params = {"userid": userid};
//        print('userid $userid');
//       final response =
//       await http.post(Uri.parse(url), body: params).timeout(const Duration(seconds: 30));
//       print('${response.body.toString()}');
//       var responseJson = json.decode(response.body.toString());
//       if (response.statusCode == 200) {
//         return  responseJson;
//         //  return ModelMembersList.fromJson(json.decode(response.body.toString()));
//       }
//     }
//     catch (e) {
//       print("uuu+$e.toString()");
//       Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);
//       throw Exception('Failed to load post');
//     }
//   }
// }

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

import '../Model/modelLogin.dart';
import '../Utils/Global.dart';
import '../common/constant.dart';



class DistrictMembersListApiService{


  static const String url = baseURL + "api/flutterapi/selectdistmembersApi.php";

  static Future DistMembersListApiCall(BuildContext context, String userid,String district) async {
    try {
      Map<String, String> params = {"userid": userid,"district": district};
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