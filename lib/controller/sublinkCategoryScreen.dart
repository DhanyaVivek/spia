import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../ApiService/sublinkApiServices.dart';
import '../Utils/Connectivity.dart';
import '../common/colors.dart';
import '../model/modelLinkCategory.dart';
import 'package:toast/toast.dart';

import '../model/modelLinksubcategory.dart';
import 'importantlink.dart';
import 'importantlinkScreen.dart';
class SubLinkCategoryScreen extends StatefulWidget {
  final String id;
  final String title;
  final String userid;
  const SubLinkCategoryScreen({Key? key, required this.id, required this.title, required this.userid}) : super(key: key);

  @override
  State<SubLinkCategoryScreen> createState() => _SubLinkCategoryScreenState();
}

class _SubLinkCategoryScreenState extends State<SubLinkCategoryScreen> {
  bool load = false;

  @override
  void initState() {
    //isLoaded = false;
    super.initState();
    LinksubcatApiCall();
  }

  List<Linksubcategory> linksubcategory = [];
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
    LinkSubCategoryApiServices.LinksubcatApiCall(context,widget.id).then((value) async {
      try {
        // progressDialog.hide();

        if (value['id'] != '') {
          setState(() {
            print('hiihh');

            linksubcategory = ((value['linksubcategory'] ?? []) as List)
                .map((li) => Linksubcategory.fromJson(li))
                .toList();

            print(linksubcategory.length);
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  ImportantLinkScreen(userid: widget.userid,);
                  },
                ),
              );
            },
          ),
        ),
        title:  Text(
          widget.title.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13.0,
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
      body: Container(
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
                    const SizedBox(height: 5,),
                    const Divider(height: 1,thickness: 0.5,color: Colors.white,),
                    SizedBox(
                        height: size.height*0.70,
                        child:
                        FutureBuilder(builder: (BuildContext context, snapshot) {
                          return ListView.separated(
                              itemCount: linksubcategory.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)
                                      {
                                        return ImpotantLinkScreen(
                                            catid: widget.id,
                                            subcatid: linksubcategory[index].id
                                                .toString(),title:linksubcategory[index].subcategory.toString());
                                      }));
                                    },

                                    child: ListTile(
                                        leading: Image(image: AssetImage(
                                          "assets/images/bitmapimg.png",
                                        ), height: 28, width:28,),

                                        title: Text(
                                            linksubcategory[index].subcategory.toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14.0,
                                              fontFamily: "SegoeUI-Semibold"),)),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Divider(thickness: 0.75,
                                  indent: 15,
                                  endIndent: 20,
                                  height: 2,
                                );
                              }
                          );

                        })
                    )
                  ],
                ),
              )

          )
      ),
    );
  }
}

