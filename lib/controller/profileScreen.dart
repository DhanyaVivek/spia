import 'package:flutter/material.dart';
import 'package:spia/controller/loginscreen.dart';

import '../ApiService/StateApiServices.dart';
import '../ApiService/districtApiServices.dart';
import '../ApiService/registrationApiService.dart';
import '../Utils/Connectivity.dart';
import '../common/colors.dart';
import '../model/ModelMemberReg.dart';
import '../model/modelDistrict.dart';
import '../model/modelState.dart';
import 'home/HomeScreen.dart';
import 'package:toast/toast.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var nameTextController = TextEditingController();
  var orgnameTextController = TextEditingController();
  var mobileTextController = TextEditingController();
  var whatsappnoTextController = TextEditingController();
  var emailTextController = TextEditingController();
  var aadharnoTextController = TextEditingController();
  var addressTextController = TextEditingController();
  var gstnoTextController = TextEditingController();
  String dropdownValuebloodgrp = "A+";

  var dropdownValuestate;
  late ModelMemberRegistration modelMemberRegistration;

//  List<Stats>? statsList;
  String state_id = '';
  String district_id = '';
  // bool value = false;
  List <String> bloodgroup  = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ] ;
  // List <String> state = [
  //   'Kerala',
  //   'Thamilnadu',
  //   'Karnadaka',
  //
  //
  // ] ;
  var dropdownValuedist;
  late ModelDistrict modelDistrict;
  List<DistrictDetails>? districtList = [];
  late String districtid;

  late ModelState modelState;
  List<StateDetails>? stateList= [];
  late String stateid;

  void initState() {
    super.initState();
   // statsdistrictApiCall();
    districtApiCall();
  }
  districtApiCall() {
    DistrictApiServices.districtApiCall(context).then((result) async {
      try {
        setState(() {
          print('hiiii');
          modelDistrict = result;
          districtList = modelDistrict.districtDetails;
        });
      } catch (e) {
        //await progressDialog.hide();
      }
    });
  }
  Future<ModelDistrict> getdistList() async {
    districtList = modelDistrict.districtDetails;
    return modelDistrict;
  }
  // statsdistrictApiCall() {
  //   ConnectivityCheck.checkConnection().then((connectionResult) async {
  //     if (connectionResult) {
  //       //await progressDialog.show();
  //       StateApiFunc();
  //     } else {
  //       Toast.show("Please check your internet connection", duration: Toast.lengthShort, gravity:  Toast.bottom);
  //       return;
  //     }
  //   });
  // }

  // StateApiFunc() {
  //   StateApiServices.stateApiCall(context).then((value) async {
  //     try {
  //       setState(() {
  //         print('hiiii');
  //         modelState = value;
  //         stateList = modelState.stateDetails;
  //       });
  //     } catch (e) {
  //       //await progressDialog.hide();
  //     }
  //   });
  // }

  Future<ModelState> getStateList() async {
    stateList = modelState.stateDetails;
    return modelState;
  }

  memberregistrationApiCall() {
    ConnectivityCheck.checkConnection().then((connectionResult) async {
      if (connectionResult) {
        //await progressDialog.show();

        registrationform();
      } else {
        Toast.show("Please check your internet connection", duration: Toast.lengthShort, gravity:  Toast.bottom);
        return;
      }
    });
  }

  void registrationform() {
    print(nameTextController.text,);
    print(emailTextController.text,);
    print(mobileTextController.text,);
    print(dropdownValuebloodgrp);
    print(addressTextController.text,);
    print(dropdownValuedist);
    print(dropdownValuestate);

    MemberRegistrationFormApiService.memberregistrationApiCall(
      context:context,
      name:nameTextController.text,
      phone:mobileTextController.text.toString(),
     // state:dropdownValuestate,
      district:dropdownValuedist,

      email:emailTextController.text,
      bloodgroup:dropdownValuebloodgrp,
      orgzname:orgnameTextController.text,
      officeaddress:addressTextController.text,
      whatsapp:whatsappnoTextController.text.toString(),
      gst:gstnoTextController.text.toString(),
      aadhar:aadharnoTextController.text.toString(),

    ).then((modelMemberRegistration) async {
      try {
        print("jkjjkjjkjkjk " + modelMemberRegistration.toString());
        modelMemberRegistration;
        if ((modelMemberRegistration.status) == '1') {
          Toast.show(modelMemberRegistration.message.toString(), duration: Toast.lengthShort, gravity:  Toast.bottom);

          //  Navigator.pop(context);
          //   Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return  LoginScreeen( );
          //       },
          //     ),
          //   );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginScreeen();
              },
            ),
          );
          Toast.show((modelMemberRegistration.message.toString()), duration: Toast.lengthShort, gravity:  Toast.bottom);

        }else {
         //  Toast.show('Something went wrong', duration: Toast.lengthShort, gravity:  Toast.bottom);
        }
        Toast.show((modelMemberRegistration.message.toString()), duration: Toast.lengthShort, gravity:  Toast.bottom);

      } catch (e) {
        print(e);
        throw Exception('Failed');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: themeColor,

      appBar:  AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        elevation: 0,
        backgroundColor: appBarColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              size: 26,
              color: Colors.white,
            ),
            onPressed: () {

              },
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              fontFamily: "Poppins"),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 15,),
            child: CircleAvatar(
              radius: 13.0,
              backgroundColor: themeColor,
              child: Image(image:AssetImage(
                "assets/images/home.png",
              ),width:28,height: 28,),
            ),
          ),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: themeColor,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10, left: 2, right: 2),
              child: Container(
                height: size.height * 0.8,
                width: size.width,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 20, bottom: 10),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 40.0,
                                      backgroundColor: themeColor,
                                      // backgroundImage: NetworkImage(
                                      //   imageUrl + profileImg,
                                      // ),
                                      child: Image.asset(
                                        "assets/images/profileimg.png",
                                        height: size.height * 0.4,
                                        width: size.width,
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Visibility(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Add Profile Picture '
                                    ,
                                    style: const TextStyle(
                                        color: appBarColor,
                                        fontSize: 13,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 45,
                              child:  TextFormField(
                                controller: nameTextController,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400),
                                decoration: InputDecoration(
                                  labelText: "Name",
                                  labelStyle: const TextStyle(
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
                                keyboardType: TextInputType.text,)
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 45,
                                child:  TextFormField(
                                  controller: orgnameTextController,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "Name of Organization",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.text,)
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 45,
                                child:  TextFormField(
                                  controller: addressTextController,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "Registered office Address",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.text,)
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                  controller: mobileTextController,

                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "Phone no",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child:   Container(
                                height: 45,
                                width: size.width,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1.0,color: Colors.black54),
                                  borderRadius: const BorderRadius.all(Radius.circular(10)
                                  ),
                                ),

                                child: DropdownButtonHideUnderline(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: dropdownValuebloodgrp,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                                      onChanged: (data) {
                                        setState(() {
                                          dropdownValuebloodgrp = data.toString();
                                        });
                                      },
                                      items: bloodgroup.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                  controller: whatsappnoTextController,

                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "Whatsapp no",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(

                                  controller: emailTextController,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "Email ID",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.emailAddress,
                                  maxLength: 50),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                  controller: gstnoTextController,

                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "GST Registration no",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                  controller: aadharnoTextController,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                    labelText: "Aadhaar no",
                                    labelStyle: const TextStyle(
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
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            SizedBox(
                              child:   Container(
                                height: 45,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1.0,color: Colors.black54),
                                  borderRadius: const BorderRadius.all(Radius.circular(10)
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      hint: Text('Select District'),
                                      value: dropdownValuedist,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                                      items: districtList?.map((districtAll) {
                                        return DropdownMenuItem(
                                          child: Text(districtAll.districtName.toString()),
                                          value: districtAll.id,
                                          onTap: () {
                                            districtid = districtAll.id.toString();
                                            print("DistrictID$districtid");
                                          },
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        String districtname = value.toString();
                                        print("Selected district is $districtname");
                                        dropdownValuedist = districtname;
                                        setState(() {
                                          dropdownValuedist = value;
                                          print(dropdownValuedist);
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 15,),
                            TextButton(
                              onPressed: () {
                                memberregistrationApiCall();
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
                                    "SAVE",
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
                      ),
                      // const Divider(
                      //   height: 1,
                      //   thickness: 1,
                      //   color: Colors.grey,
                      // ),
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.only(left: 10.0, right: 10),
                      //   child: Column(
                      //     children: [
                      //       const SizedBox(
                      //         height: 10,
                      //       ),
                      //       Row(
                      //         children: const [
                      //           Text(
                      //             "Documents",
                      //             style: TextStyle(
                      //                 color: themeColor,
                      //                 fontSize: 16,
                      //                 fontFamily: "Roboto",
                      //                 fontWeight: FontWeight.w500),
                      //           ),
                      //           SizedBox(
                      //             width: 10,
                      //           ),
                      //           Text(
                      //             "( jpg or pdf format with size less than 50k )",
                      //             style: TextStyle(
                      //                 color: themeColor,
                      //                 fontSize: 12,
                      //                 fontFamily: "Roboto",
                      //                 fontWeight: FontWeight.w400),
                      //           ),
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 22.0,
                      //       ),
                      //
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           const SizedBox(
                      //             width: 130,
                      //             child: Text(
                      //               "Pancard",
                      //               style: TextStyle(
                      //                   color: themeColor,
                      //                   fontSize: 14,
                      //                   fontFamily: "Roboto",
                      //                   fontWeight: FontWeight.w400),
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10,
                      //           ),
                      //           CachedNetworkImage(
                      //             width: 50,
                      //             height: 50,
                      //             fit: BoxFit.fill,
                      //             imageUrl: imageUrl + panCard,
                      //             placeholder: (context, url) =>
                      //                 Container(),
                      //             errorWidget: (context, url, error) =>
                      //                 const Text(
                      //               'No Data',
                      //               style: TextStyle(
                      //                   color: themeColor,
                      //                   fontSize: 14,
                      //                   fontFamily: "Roboto",
                      //                   fontWeight: FontWeight.w400),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //
                      //       const SizedBox(
                      //         height: 10,
                      //       ),
                      //
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           const SizedBox(
                      //             width: 130,
                      //             child: Text(
                      //               "Aadhar/Passport/\nVoters ID",
                      //               style: TextStyle(
                      //                   color: themeColor,
                      //                   fontSize: 14,
                      //                   fontFamily: "Roboto",
                      //                   fontWeight: FontWeight.w400),
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10,
                      //           ),
                      //           CachedNetworkImage(
                      //             width: 50,
                      //             height: 50,
                      //             fit: BoxFit.fill,
                      //             imageUrl: imageUrl + proof,
                      //             placeholder: (context, url) =>
                      //                 Container(),
                      //             errorWidget: (context, url, error) =>
                      //                 const Text(
                      //               'No Data',
                      //               style: TextStyle(
                      //                   color: themeColor,
                      //                   fontSize: 14,
                      //                   fontFamily: "Roboto",
                      //                   fontWeight: FontWeight.w400),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //
                      //       const SizedBox(
                      //         height: 10,
                      //       ),
                      //
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           const SizedBox(
                      //             width: 130,
                      //             child: Text(
                      //               "Passport\nsize photo",
                      //               style: TextStyle(
                      //                   color: themeColor,
                      //                   fontSize: 14,
                      //                   fontFamily: "Roboto",
                      //                   fontWeight: FontWeight.w400),
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10,
                      //           ),
                      //           CachedNetworkImage(
                      //             width: 50,
                      //             height: 50,
                      //             fit: BoxFit.fill,
                      //             imageUrl: imageUrl + photo,
                      //             placeholder: (context, url) =>
                      //                 Container(),
                      //             errorWidget: (context, url, error) =>
                      //                 const Text(
                      //               'No Data',
                      //               style: TextStyle(
                      //                   color: themeColor,
                      //                   fontSize: 14,
                      //                   fontFamily: "Roboto",
                      //                   fontWeight: FontWeight.w400),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //
                      //       const SizedBox(
                      //         height: 40,
                      //       ),
                      //       //
                      //       //
                      //       // TextButton(
                      //       //   onPressed: (){
                      //       //   },
                      //       //   child: Container(
                      //       //     height: 45,
                      //       //     width: size.width*0.7,
                      //       //     decoration: BoxDecoration(
                      //       //       color: themeColor,
                      //       //       borderRadius: BorderRadius.circular(45),
                      //       //     ),
                      //       //     child: const Center(
                      //       //       child: Text(
                      //       //         "Add",
                      //       //         style: TextStyle(
                      //       //           fontWeight: FontWeight.w400,
                      //       //           fontFamily: "Roboto",
                      //       //           color: Colors.white,
                      //       //           fontSize: 18,
                      //       //         ),
                      //       //
                      //       //       ),
                      //       //     ),
                      //       //   ),
                      //       // ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),


    );
  }
}
