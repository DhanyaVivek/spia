import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../home/HomeScreen.dart';
import '../support.dart';
import 'edit_profile.dart';
import 'mycharity.dart';
import 'mydonation.dart';
class SpiaProfileViewScreen extends StatefulWidget {
  const SpiaProfileViewScreen({Key? key}) : super(key: key);

  @override
  State<SpiaProfileViewScreen> createState() => _SpiaProfileViewScreenState();
}

class _SpiaProfileViewScreenState extends State<SpiaProfileViewScreen> {
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
          "SPIA PROFILE",
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10, left: 2, right: 2),
              child: Container(
                height: size.height * 0.85,
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
                                  Text('Vivek P C'
                                    ,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                             Icon(
                                    Icons.phone,
                                    size: 26,
                                    color: Colors.grey,
                                  ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('8907131065',
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 26,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('Address',
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xffe0e0e0),
                            ),
 Card(
    color: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    side: BorderSide(
    color: Color(0xffe0e0e0),
    ),
    ),
    child: SizedBox(
    height: 100,
    child: Stack(
    children: [



    Positioned(
    top: 15,
    left: 30,
    child: Row(
    children:  [
    Text('Subscription Amount', style: const TextStyle(
    color: Color(0xff0949d6),
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: "segoe_ui_semibold",
    ),
    ),

    ],
    )
    ),
    Positioned(
    top: 45,
    left: 30,
    child: Row(
    children:  [
    Text('Expires on Mar 31,2023', style: const TextStyle(
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
        top: 70,
        left: 30,
    child: Row(
    children:  [
    Text('\u{20B9} 1200', style: const TextStyle(
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
    height: 29,
    width: size.width * 0.29,
    decoration: BoxDecoration(
    color: Color(0xFFec7032),
    borderRadius: BorderRadius.circular(5),
    ),
    child: const Center(
    child: Text(
    "Update Payment",
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
    ),],),)),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           GestureDetector(
                           onTap: () {
                     Navigator.pushReplacement(context,
                     MaterialPageRoute(builder: (context) {
                     return const MyDonation();
                     }));
                     },
                             child: Row(
                             children:[

                                   Icon(
                                         Icons.real_estate_agent_rounded,
                                         color: Colors.black,
                                       ),
                                   SizedBox( width: 15,),
                                   Text(
                                         'My Donations',
                                         style: TextStyle(
                                             color: menutextColor,
                                             fontFamily: "Roboto",
                                             fontSize: 16,
                                             fontWeight: FontWeight.w400),
                                       ),


                                    ],
                         ),
                           ),
                           SizedBox(height: 20,),
                           GestureDetector(
                             onTap: () {
                               Navigator.pushReplacement(context,
                                   MaterialPageRoute(builder: (context) {
                                     return const MyCharity();
                                   }));
                             },
                             child: Row(
                               children:[

                                 Icon(
                                   Icons.volunteer_activism,
                                   color: Colors.black,
                                 ),
                                 SizedBox( width: 15,),
                                 Text(
                                   'My Charity',
                                   style: TextStyle(
                                       color: menutextColor,
                                       fontFamily: "Roboto",
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400),
                                 ),


                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           GestureDetector(
                             onTap: () {
                               Navigator.pushReplacement(context,
                                   MaterialPageRoute(builder: (context) {
                                     return const EditProfileScreen();
                                   }));
                             },
                             child: Row(
                               children:[

                                 Icon(
                                   Icons.edit,
                                   color: Colors.black,
                                 ),
                                 SizedBox( width: 15,),
                                 Text(
                                   'Edit Profile',
                                   style: TextStyle(
                                       color: menutextColor,
                                       fontFamily: "Roboto",
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400),
                                 ),


                               ],
                             ),
                           ),
                           SizedBox(height: 20,),
                           GestureDetector(
                             onTap: () {
                               Navigator.pushReplacement(context,
                                   MaterialPageRoute(builder: (context) {
                                     return const SupportScreen();
                                   }));
                             },
                             child: Row(
                               children:[

                                 Icon(
                                   Icons.headset_mic_outlined,
                                   color: Colors.black,
                                 ),
                                 SizedBox( width: 15,),
                                 Text(
                                   'Help & Support',
                                   style: TextStyle(
                                       color: menutextColor,
                                       fontFamily: "Roboto",
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400),
                                 ),


                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
SizedBox(height: 30,),
                            Divider(
                              thickness: 1,
                              color: Color(0xffe0e0e0),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 20),
                              child: Row(
                                children:[

                                  Icon(
                                    Icons.logout,
                                    color: Colors.red,

                                  ),
                                  SizedBox( width: 15,),
                                  Text(
                                    'Log out',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontFamily: "Roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),


                                ],
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
