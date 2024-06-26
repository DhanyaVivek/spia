import 'package:flutter/material.dart';

import '../common/colors.dart';
import 'home/HomeScreen.dart';
class CharityDetails extends StatefulWidget {
  const CharityDetails({Key? key}) : super(key: key);

  @override
  State<CharityDetails> createState() => _CharityDetailsState();
}

class _CharityDetailsState extends State<CharityDetails> {
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
          "SPIA CHARITY",
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
                    top: 20.0, bottom: 10, left: 10, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    const Divider(height: 1,thickness: 0.5,color: Colors.white,),
                    SizedBox(
                      height: size.height*0.8,
                      child: ListView.separated(
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(

                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text('Kerala Flood Relief Fund ',
                                style: TextStyle(fontSize: 13,
                                fontWeight: FontWeight.w500,fontFamily: "SegoeUI-Semibold"),
                              ),
                            ),
                            subtitle: Text('May 21- May 30',
                              style: TextStyle(fontSize: 12,fontFamily: "SegoeUI"),),
                            leading:  Image(image:AssetImage(
                                "assets/images/charity.png",
                              ),width:35,height: 35,),
                            trailing:     TextButton(
                              onPressed: (){

                              },
                              child: Container(
                                height: 26,
                                width: size.width * 0.23,
                                decoration: BoxDecoration(
                                  color: Color(0xFFec7032),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Donate Now",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Roboto",
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),);
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
