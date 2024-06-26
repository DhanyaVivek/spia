import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../home/HomeScreen.dart';
class MyPartners extends StatelessWidget {
  const MyPartners({Key? key}) : super(key: key);

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
              size: 40,
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
          "MY PARTNERS",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              fontFamily: "SegoeUI-Semibold"),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 15,),


            child: Row(
              children: [
                CircleAvatar(
                  radius: 15.0,
                //  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage(
                    "assets/images/plus_rounded.png",
                  ),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 13.0,
                  backgroundColor: themeColor,
                  child: Image(image:AssetImage(
                    "assets/images/home.png",
                  ),width:28,height: 28,),
                ),
              ],
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
                      height: size.height*0.8,
                      child: ListView.separated(
                        itemCount: 5,
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
                    )
                  ],
                ),
              )

          )
      ),
    );
  }
}
