
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../ApiService/otpApiServices.dart';
import '../Utils/Connectivity.dart';
import '../Utils/Global.dart';
import 'home/HomeScreen.dart';

class OTPScreen extends StatefulWidget {
final String phone;
final String userid;
final String otp;

  const OTPScreen({Key? key, required this.userid,required this.phone, required this.otp}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var otpTextController = TextEditingController();
  // var androidInfo;
  bool isButtonPressed = false;
  bool isError = false;
  //late ModelOtp model;
  final GlobalKey<FormState> _formKey = GlobalKey();

  dynamic _phone = '';
  dynamic _systemname = '';
  // String userid ='';

  // deviceInfo() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //   return androidInfo.id;
  // }

  otpApiCall() {
    ConnectivityCheck.checkConnection().then((connectionResult) async {
      if (connectionResult) {
        //await progressDialog.show();
        apiFunc();
      } else {
        Toast.show("Something went wrong",
            duration: Toast.lengthShort, gravity: Toast.bottom);
        return;
      }
    });
  }

  apiFunc() {
    print("ID${Global.shared.id}");
    OtpApiService.otpApiCall(
        context, widget.phone, widget.userid, otpTextController.text)
        .then((value) async {
      try {
        // model = modelOtp;
        if ((value.userid != '') && ((otpTextController.text !='') )) {
          print(otpTextController.text);
          print('userid');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen(
                 userid: value.userid.toString(),
                );
              },
            ),
          );

          Toast.show((value.message.toString()),
              duration: Toast.lengthShort, gravity: Toast.bottom);
        }
        else{
          //customAlert();
        }
        // await progressDialog.hide();
        Toast.show((value.message.toString()),
            duration: Toast.lengthShort, gravity: Toast.bottom);
      } catch (e) {
        Toast.show((value.message.toString()),
            duration: Toast.lengthShort, gravity: Toast.bottom);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color: Color(0xFF0949d6),
          child: Stack(
            children: [
              Positioned(
                top: size.height * 0.10,
                left: 28,
                child: SizedBox(
                  height: size.height * 0.26,
                  width: size.width * 0.82,
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: size.height * 0.4,
                    width: size.width,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  top: size.height*0.35,
                  left: 165,
                  child: SizedBox(
                    height: size.height * 0.2,
                    width: size.width,
                    child: Text('SPIA',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),

                    ),)
              ),




              Positioned(top: size.height * 0.75, child: otpformWidget())

            ],
          ),


        ),
      ),
    );
  }

  otpformWidget() {
    Size size = MediaQuery.of(context).size;
    return Form(

        child: Container(
          height: size.height * 0.5,
          width: size.width,
          // color: Colors.blue,
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(color: Colors.black12, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35,left: 20,right: 20),
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                      controller: otpTextController,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: "Enter your OTP",
                        hintStyle: const TextStyle(
                            fontFamily: "Roboto",
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

              SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                   if (otpTextController.text.length >= 4) {
                      otpApiCall();
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
                      "VERIFY",
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
            ],
          ),
        )

    );
  }
}