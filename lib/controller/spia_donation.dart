import 'package:flutter/material.dart';

import '../common/colors.dart';
import 'home/HomeScreen.dart';
class SpiaDonationScreen extends StatelessWidget {
  const SpiaDonationScreen({Key? key}) : super(key: key);

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
          "SPIA DONATION",
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
      body: Column(
      children: [
      const SizedBox(height: 10,),
    const Divider(height: 1,thickness: 0.5,color: Colors.white,),
    SizedBox(
    height: size.height*0.8,

    child: ListView.separated(

        itemCount: 6,
    padding: const EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
    itemBuilder: (BuildContext context, int index) {
     return   Card(
    color: Colors.white,
    elevation: 0,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.0),
           side: BorderSide(
             color: Color(0xffe0e0e0),
           ),
         ),
    child: SizedBox(
    height: 80,
    child: Stack(
    children: [
    Positioned(
    top: 20,
    left: 10,
child: Image(image:AssetImage(
      "assets/images/donation.png",
    ),width:35,height: 35,),

    ),


   Positioned(
    top: 10,
    left: 70,
    child: Row(
    children:  [
    Text('Kerala Food Charity', style: const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "segoe_ui_semibold",
    ),
    ),

    ],
    )
    ),
      Positioned(
          top: 30,
          left: 70,
          child: Row(
            children:  [
              Text('07 June,2022', style: const TextStyle(
                color: Color(0xff868ca0),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: "SegoeUI",
              ),
              ),

            ],
          )
      ),
      Positioned(
          top: 50,
          left: 70,
          child: Row(
            children:  [
              Text('Donated', style: const TextStyle(
                color: Color(0xff868ca0),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: "SegoeUI",
              ),
              ),

            ],
          )
      ),
      Positioned(
          top: 50,
          left: 120,
          child: Row(
            children:  [
              Text('\u{20B9} 100', style: const TextStyle(
                color: Color(0xff0949d6),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: "SegoeUI",
              ),
              ),

            ],
          )
      ),
      Positioned(
        top: 25,
        left: 220,
        child: TextButton(
          onPressed: (){

          },
          child: Container(
            height: 28,
            width: size.width * 0.25,
            decoration: BoxDecoration(
              color: Color(0xFFec7032),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Text(
                "View Receipt",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ),],),));},
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10,);
      },),),],),
    );
  }
}
