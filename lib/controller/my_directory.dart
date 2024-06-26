import 'package:flutter/material.dart';

import '../common/colors.dart';
import 'home/HomeScreen.dart';
class MyDirectoryScreen extends StatelessWidget {
  const MyDirectoryScreen({Key? key}) : super(key: key);

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
          "MY DIRECTORY",
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
                    const SizedBox(height: 10,),
                    const Divider(height: 1,thickness: 0.5,color: Colors.white,),
                    SizedBox(
                      height: size.height*0.8,
                      child: ListView.separated(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              leading:  const Icon(Icons.location_on_outlined,color: Color(0xFF0949d6) ,),

                              title: Text("Thiruvananthapuram",
                                style:
                                TextStyle(color: Colors.black,
                                    fontSize: 16,
                                fontWeight: FontWeight.w500) ,));
                        },
                        separatorBuilder: (context, index) {
                          return Divider(thickness: 0.75,
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

