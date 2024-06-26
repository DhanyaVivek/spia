import 'package:flutter/material.dart';

import '../ApiService/ImportantLinkApiServices.dart';
import '../Utils/Connectivity.dart';
import '../common/colors.dart';
import '../model/modelImportantlink.dart';
import 'package:toast/toast.dart';


class ImpotantLinkScreen extends StatefulWidget {
  final String catid;
  final  String subcatid;
  final  String title;

  const ImpotantLinkScreen({Key? key,required this.catid, required this.subcatid, required this.title}) : super(key: key);

  @override
  State<ImpotantLinkScreen> createState() => _ImpotantLinkScreenState();
}

class _ImpotantLinkScreenState extends State<ImpotantLinkScreen> {
  @override
  @override
  void initState() {
    //isLoaded = false;
    super.initState();
    LinksubcatApiCall();
  }

  List<Importantlink> importantlink = [];
  LinksubcatApiCall() {
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
    ImportantLinkApiServices.ImportantLinkApiCall(context,widget.catid,widget.subcatid).then((value) async {
      try {
        // progressDialog.hide();

        if (value['id'] != '') {
          setState(() {
            print('hiihh');

            importantlink = ((value['importantlink'] ?? []) as List)
                .map((li) => Importantlink.fromJson(li))
                .toList();

            print(importantlink.length);
          });
        } else {
          // Toast.show((value['message'].toString()),
          //     duration: Toast.lengthShort, gravity: Toast.bottom);
        }
        // Toast.show((value['message'].toString()),
        //     duration: Toast.lengthShort, gravity: Toast.bottom);
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
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return  ArticleScreen(userid: widget.userid,);
              //     },
              //   ),
              // );
            },
          ),
        ),
        title:  Text(
       widget.title,
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
              child: Image(image:AssetImage(
                "assets/images/home.png",
              ),width:28,height: 28,),
            ),
          ),
        ],
      ),

body:
      Container(
          height: size.height,
          width: size.width,
          color: themeColor,
          child: SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 10, left: 20, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                     // Flexible(
                     //   child: InAppWebView(
                     //   //  initialUrl: "http://example.com",
                     //   ),
                     // ),

                  ],
                ),
              )

          )
      ),
    );
  }
}
