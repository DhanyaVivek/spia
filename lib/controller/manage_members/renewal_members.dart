import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../home/HomeScreen.dart';
class RenewalMembers extends StatefulWidget {
  const RenewalMembers({Key? key}) : super(key: key);

  @override
  State<RenewalMembers> createState() => _RenewalMembersState();
}

class _RenewalMembersState extends State<RenewalMembers> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: themeColor,

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
          "RENEWAL",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              fontFamily: "Poppins"),
        ),
        actions:  const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10,),
            child:Image(image:AssetImage(
              "assets/images/folder.png",
            ),width:28,height: 28,),

          ),
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
      // bottomNavigationBar: bottomNav(),
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
                      height: size.height*0.75,
                      child: ListView.separated(
                        itemCount: 8,
                        padding: const EdgeInsets.only(top: 5,bottom: 10,left: 10,right: 10),
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
                                  const Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Text('Vivek P C',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "segoe_ui_semibold",),

                                    ),),
                                  Positioned(
                                      top: 30,
                                      left: 10,
                                      child: Row(
                                        children:  const [
                                          Text('8907131065', style: TextStyle(
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
                                      top: 10,
                                      left: 270,
                                      child: Row(
                                        children:   [
                                          TextButton(
                                            onPressed: (){

                                            },
                                            child: Container(
                                              height: 20,
                                              width: size.width * 0.15,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFf33232),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  "Renew",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "SegoeUI",
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

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
                        },
                      ),
                    ),

                  ],
                ),
              )

          )
      ),
    );
  }
}
