import 'package:flutter/material.dart';
import 'package:spia/controller/otpscreen.dart';
import 'package:spia/controller/profileScreen.dart';
import 'package:toast/toast.dart';

import '../ApiService/loginApiSrvices.dart';
import '../Utils/Connectivity.dart';
import '../model/modelLogin.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({Key? key}) : super(key: key);

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  var mobileTextController = TextEditingController();
  // var androidInfo;
  bool isButtonPressed = false;
  bool isError = false;
  late ModelLogin model;

  String title = '';

  // deviceInfo() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //   return androidInfo.id;
  // }

  bool validateMobile(String value) {
    String pattern = r'^[6-9]\d{9}$';

    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return true;
    }
    return true;
  }

  loginApiCall() {
    ConnectivityCheck.checkConnection().then((connectionResult) async {
      if (connectionResult) {
        //await progressDialog.show();
        apiFunc();
      } else {
        Toast.show("Please check your internet connection",
            duration: Toast.lengthShort, gravity: Toast.bottom);
        return;
      }
    });
  }

  apiFunc() {
    LoginApiService.loginApiCall(context,mobileTextController.text)
        .then((modelLogin) async {
      try {
           model = modelLogin;
     //    print('hiiii');
           if (modelLogin.status == '2') {
           print(mobileTextController.text);
           print(modelLogin.status);
           Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return
                  OTPScreen(
                    userid: modelLogin.userid.toString(),
                    phone: modelLogin.phone.toString(),
                    otp: modelLogin.otp.toString(),
                  );
              },
            ),
          );

          Toast.show((modelLogin.message.toString()), duration: Toast.lengthShort, gravity:  Toast.bottom);


        } else  {
          Toast.show('Incorrect mobileno', duration: Toast.lengthShort, gravity:  Toast.bottom);
        }
        // await progressDialog.hide();
        if(modelLogin.status == '1') {
          Toast.show((modelLogin.message.toString()), duration: Toast.lengthLong,
              gravity: Toast.bottom);
        }else {
          Toast.show((modelLogin.message.toString()), duration: Toast.lengthShort,
              gravity: Toast.bottom);
        }
      } catch (e) {
        Toast.show((modelLogin.message.toString()), duration: Toast.lengthShort, gravity:  Toast.bottom);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Scaffold(
       backgroundColor: Colors.white,
       body: SingleChildScrollView(
         child: Container(
           height: size.height,
           width: size.width,
           color: Colors.white,
           child: Stack(
             children: [
               Positioned(
                 top: size.height*0.08,
                 left: 25,
                 child: SizedBox(
                   height: size.height * 0.2,
                   width: size.width * 0.6,
                   child: Image.asset(
                     "assets/images/loginimg1.png",
                     height: size.height * 0.4,
                     width: size.width ,
                     fit: BoxFit.fill,
                   ),
                 ),
               ),

               Positioned(
                 top: size.height*0.3,
                 left: 37,
                 child: SizedBox(
                   height: size.height * 0.2,
                   width: size.width,
                   child: Text('Registration N0:TVM/TC/328/2017\nEmail:spia.kerala@gmail.com',
                   style: TextStyle(
                     fontSize: 15,
                     color: Color(0xfff868ca0),

                   ),)
                 ),
               ),
               Positioned(
                 top: size.height*0.34,
                 child: SizedBox(
                   height: size.height * 0.09,
                   width: size.width,
                   child: Image.asset(
                     "assets/images/loginimg2.png",
                     height: size.height * 0.3,
                     width: size.width,
                     fit: BoxFit.fill,
                   ),
                 ),
               ),
               Positioned(
                 top: size.height*0.45,
                 left: 37,
                 child: SizedBox(
                     height: size.height * 0.2,
                     width: size.width,
                     child: Text('Administrative Offfice: No. 41/2795,C-2 FirstFloor,\nNorth Avanue Building,Paramara'
                         'Road,\nKochi-682018,Kerala',
                       style: TextStyle(
                         fontSize:14 ,
                         color: Color(0xfff868ca0),

                       ),)
                 ),
               ),
               Positioned(top: size.height * 0.63, child: loginWidget())

             ],
           ),
        ),
       ),
     );
  }
  Widget loginWidget() {
    Size size = MediaQuery.of(context).size;
    return Form(

      child: Container(
        height: size.height * 0.5,
        width: size.width,
       // color: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xffe0e0e0), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                    controller: mobileTextController,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      hintText: "Enter your mobile no",
                      hintStyle: const TextStyle(
                          fontFamily: "segoe_ui_semiligh",
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300),
                      fillColor: Colors.white,
                      filled: true,
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 10),
              ),

            ),
            SizedBox(height: 15,),
            TextButton(
              onPressed: (){

                    if (mobileTextController.text == '') {
                       setState(() {
                       title = 'Please enter mobile number';
                        });
                     }
                     else {
                         loginApiCall();
                      }
               },
              child: Container(
                height: 45,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFF0949d6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Color(0xffe0e0e0),thickness: 1,),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );

              },
              child: Container(
                height: 45,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF0949d6),),
                ),
                child: const Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Color(0xFF0949d6),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
       ),
    );
  }
}
