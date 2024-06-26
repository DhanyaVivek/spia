import 'package:flutter/material.dart';
import 'package:spia/controller/selectbloodgroup.dart';

import '../ApiService/newMembersApiServices.dart';
import '../Utils/Connectivity.dart';
import '../common/colors.dart';
import '../model/modelMemberslist.dart';
import 'home/HomeScreen.dart';
import 'package:toast/toast.dart';
class BloodGroupScreen extends StatefulWidget {
  const BloodGroupScreen({Key? key}) : super(key: key);

  @override
  State<BloodGroupScreen> createState() => _BloodGroupScreenState();
}

class _BloodGroupScreenState extends State<BloodGroupScreen> {
  @override
  void initState() {
    //isLoaded = false;
    super.initState();

    newMembersApiCall();

  }
  List<Memberslist> memberslist = [];
  newMembersApiCall() {
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
    NewMembersApiService.MembersListApiCall(context).then((value) async {
      try {
        if (value['name'] != '') {
          setState(() {

            memberslist = ((value['memberslist'] ?? []) as List)
                .map((li) => Memberslist.fromJson(li))
                .toList();
            print(memberslist.length);
          });
        } else {
          Toast.show((value['message'].toString()),
              duration: Toast.lengthShort, gravity: Toast.bottom);
        }
        // Toast.show((value['message'].toString()), duration: Toast.lengthShort, gravity:  Toast.bottom);

      } catch (e) {
        //await progressDialog.hide();
      }
    });
  }
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
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const HomeScreen();
              //     },
              //   ),
              // );
              },
          ),
        ),
        title: const Text(
          "Blood Group",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              fontFamily: "SegoeUI-Semibold"),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 15,),
            child: CircleAvatar(
              radius: 13.0,
              backgroundColor: themeColor,
              child: Image(image: AssetImage(
                "assets/images/home.png",
              ),width: 30,height: 30,),
            ),
          ),
        ],
      ),
      body: Container(
          height: size.height,
          width: size.width,
          color: themeColor,
          child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    const Divider(height: 1,thickness: 0.5,color: Colors.white,),
                    SizedBox(
                      height: size.height*0.7,
                      child:  FutureBuilder(builder: (BuildContext context, snapshot) {
                        return ListView.separated(
                          itemCount: memberslist.length,
                          padding: const EdgeInsets.only(top: 10,bottom: 20,left: 10,right: 10),
                          itemBuilder: (BuildContext context, int index) {
                            return  Card(
                              color: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SizedBox(
                                height: 70,
                                child: Stack(
                                  children: [
                                     Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        memberslist[index].name.toString(),
                                        style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "segoe_ui_semibold",),

                                      ),),
                                    Positioned(
                                        top: 30,
                                        left: 10,
                                        child: Row(
                                          children:   [
                                            Text(
                                              memberslist[index].contact.toString(),
                                              style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "SegoeUI",
                                            ),
                                            ),

                                          ],
                                        )
                                    ),
                                    Positioned(
                                        top: 20,
                                        left: 230,
                                        child: Row(
                                          children:   [
                                            Text(
                                              memberslist[index].memberid.toString(),
                                               style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "segoe_ui_semibold",
                                            ),
                                            ),

                                          ],
                                        )
                                    ),
                                    Positioned(
                                        top: 20,
                                        left: 270,
                                        child: Row(
                                          children:  const [
                                            Image(image:AssetImage(
                                                "assets/images/phone.png"
                                            ),width:25,height: 25,)

                                          ],
                                        )
                                    ),
                                  ],),
                              ),  );

                          },
                          separatorBuilder: (context, index) {
                            return const Divider(thickness: 0.75,
                              indent: 15,
                              endIndent: 20,
                              height:2,
                            );
    });
    }
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        GestureDetector(
                        onTap: () {
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
              return const SelectBloodGroup();
              }));
              },
                              child: Image(image:AssetImage(
                                  "assets/images/filter.png"
                              ),width:75,height: 75,),
                            )

                      ],
                    )
                  ],
                ),
              )

          )
      ),
    );
  }
}
