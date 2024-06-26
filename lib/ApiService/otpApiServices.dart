import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import '../common/constant.dart';
import '../model/modelOtp.dart';

class OtpApiService {
  static const String url = baseURL+"api/otpverify_api.php";

  static Future<ModelOtp> otpApiCall(
      BuildContext context,String phone,String userid ,String otp) async {
    try {
     // print('userid $userid');
      print('phone $phone');
      print('otp $otp');
      Map<String, String> params = {
        "userid":userid,"otp":otp,
      };
      final response =
      await http.post(Uri.parse(url),body:json.encode(params)).timeout(const Duration(seconds: 30));
      print(response.body);
      if (response.statusCode == 200) {
        return ModelOtp.fromJson(json.decode(response.body));
      }
      throw Exception('Failed to load post');
    } catch (e) {
      print("uuu+$e.toString()");
      Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);
      throw Exception('Failed to load post');
    }

  }
}

