import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';


import 'package:http/http.dart' as http;


// import '../Utils/Global.dart';
import '../common/constant.dart';


class MemberRegistrationFormApiService{
  static const String url = baseURL +"api/newmembers_api.php";

  static Future memberregistrationApiCall({required BuildContext context,
    required String name,
    required String phone,
  //  required String state,
    required String district,
    required String email,
    required String bloodgroup,
    required String orgzname,
    required String officeaddress,
    required String whatsapp,
    required String gst,
    required String aadhar,
  }) async {

    ToastContext().init(context);
    // try {
    //   print(name + phone + state + district + email + bloodgroup + orgzname
    //       + officeaddress + whatsapp + gst + aadhar);
    //
    //   var formData = FormData.fromMap({
    //       "name": name,
    //       "phone": phone,
    //       "state": state,
    //       "district": district,
    //       "email": email,
    //       "bloodgroup": bloodgroup,
    //       "orgzname": orgzname,
    //       "officeaddress": officeaddress,
    //       "whatsapp": whatsapp,
    //       "gst": gst,
    //       "aadhar": aadhar,
    //     });
    //
    //   //print(formData);
    //   Dio dio = Dio();
    //   final response = await dio.post( url, data: formData,
    //     onSendProgress: (received, total) {
    //       print('hi');
    //     },
    //   );
    //   var responseJson = response.data;
    //   print(responseJson);
    //   return responseJson;
    // }
    // catch (e) {
    //   if (e is DioError) {
    //     print('jiihihihihigugtdrtd${e.response}');
    //     print('${e.response?.statusCode}');
    //   }
    // }
    try {

      Map<String, String> params = {
        "name": name,
        "phone": phone,
       // "state": state,
        "district": district,
        "email": email,
        "bloodgroup": bloodgroup,
        "orgzname": orgzname,
        "officeaddress": officeaddress,
        "whatsapp": whatsapp,
        "gst": gst,
        "aadhar": aadhar,

      };

      final response =
      await http.post(Uri.parse(url),  body:json.encode(params)).timeout(const Duration(seconds: 30));
      print(response.body);
      if (response.statusCode == 200) {
       // return ModelMemberRegistration.fromJson(json.decode(response.body));

      }
      throw Exception('Failed to load post');
    } catch (e) {
      print("uuu+$e.toString()");
      Toast.show("Something went wrong", duration: Toast.lengthShort, gravity:  Toast.bottom);
      throw Exception('Failed to load post');
    }
  }}
