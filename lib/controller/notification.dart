import 'package:flutter/material.dart';

import '../ApiService/notificationApiservices.dart';
import '../Utils/Connectivity.dart';
import '../common/colors.dart';

import '../model/modelNotification.dart';
import 'home/HomeScreen.dart';
import 'package:toast/toast.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool load = false;

   //late ModelNotification modelNotification;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }
  apiCall() {
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
  List<Notificationlist> notificationlist = [];
  apiFunc() {
    NotificationApiService.notificationApiCall(context).then((value) async {
      try {
        if (value ['messageid']!= '') {
          setState(() {
            print('hiihh');
           // print(result);
            notificationlist = ((value['notificationlist'] ?? []) as List)
                  .map((li) => Notificationlist.fromJson(li))
                  .toList();
            print(notificationlist.length);
            print('dv');
            });
        } else {
          // Toast.show((value['message'].toString()),
          //     duration: Toast.lengthShort, gravity: Toast.bottom);
        }
      }
      catch (e) {
        //await progressDialog.hide();
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
          "NOTIFICATIONS",
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
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 10, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // flex: 1,
                    child:Container(
                      decoration: BoxDecoration(
                       // border: Border.all(color: Colors.black),
                        //color: Colors.green,
                      ),
                      height: 20,
    child:
    FutureBuilder(builder: (BuildContext context, snapshot) {
      return  ListView.builder(
          itemCount:notificationlist.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0x4DFFFFFF),
              child: Stack(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: Container(
                        height: 55,
                        width: 400,
                        decoration: BoxDecoration(

                            color: Color(0x7300000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(notificationlist[index].messagetitle.toString()


                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 80, left: 15, right: 10, bottom: 10),
                    child: Text(notificationlist[index].description.toString()

                    )
                  ),],
              ),


              // child: ListTile(
              //   title: Text("Name"),
              //   subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              // ),
            );
          }
      );
    }),
                    )
                ),
              ],
            ),
          )
      ),
    );
  }
}
