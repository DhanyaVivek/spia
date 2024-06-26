import 'package:flutter/material.dart';
import 'package:spia/controller/Spiaprofile/spiaprofile.dart';

import '../../common/colors.dart';
import 'mydonation.dart';
class ViewDonationReceipt extends StatelessWidget {
  const ViewDonationReceipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
backgroundColor: Color(0xff6b768a),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 20, top: 170),
      child: Container(
        height: 360,
           width: 320,

      decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: themeColor,
                ),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              Positioned(
                right: 0,
                left: 0,
                top: -15,

                child:Image.asset(
             "assets/images/check.png",
                  height: 40,width:40,

              ),),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  child:   CircleAvatar(
                                    radius: 40.0,
                                    backgroundColor: Color(0xFFE8EAF6),
                                    // backgroundImage: NetworkImage(
                                    //   imageUrl + profileImg,
                                    // ),
                                    child: Image.asset(
                                      "assets/images/donationimg.png",
                                     width: 60,height: 60,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Thank You !',style: TextStyle( color: Colors.black,
                                  fontSize: 20,

                                  fontWeight: FontWeight.w600,
                                  fontFamily: "SegoeUI",),
                                  ),
                                SizedBox(height: 10,),
                                Text('Your Donation has been made successfully !',
                                  style: TextStyle( color: Color(0xff868ca0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "SegoeUI",),),
                                SizedBox(height: 10,),
                                Row(
                                  children: List.generate(300~/10, (index) => Expanded(
                                    child: Container(
                                      color: index%2==0?Colors.transparent
                                          :Colors.grey,
                                      height: 1,
                                    ),
                                  )),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width: 220,
                                //  color: Colors.greenAccent,
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('From',
                                            style: TextStyle(fontSize: 10,
                                                color: Color(0xff868ca0),
                                               fontFamily:'Poppins',
                                            ),),

                                          SizedBox(height: 5,),
                                          Text('Vivek', style: TextStyle(fontSize: 12,
                                            color: Color(0xff25282d),
                                            fontFamily:'Poppins',
                                          ),),
                                          SizedBox(height:15),
                                          Text('to',
                                            style: TextStyle(fontSize: 10,
                                              color: Color(0xff868ca0),
                                              fontFamily:'Poppins',
                                            ),),
                                          SizedBox(height:5,),
                                          Text('sign printing \nindustries association', style: TextStyle(fontSize: 12,
                                            color: Color(0xff25282d),
                                            fontFamily:'Poppins',
                                          ),),
                                          SizedBox(height: 15,),
                                          Text('Title',
                                            style: TextStyle(fontSize: 10,
                                              color: Color(0xff868ca0),
                                              fontFamily:'Poppins',
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('Quarterly pass  share', style: TextStyle(fontSize: 12,
                                            color: Color(0xff25282d),
                                            fontFamily:'Poppins',
                                          ),
                                          maxLines: 2,
                                          overflow: null,),

                                        ],

                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Date',
                                            style: TextStyle(fontSize: 10,
                                              color: Color(0xff868ca0),
                                              fontFamily:'Poppins',
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('28 may 2022', style: TextStyle(fontSize: 12,
                                            color: Color(0xff25282d),
                                            fontFamily:'Poppins',
                                          ),),
                                          SizedBox(height: 12,),

                                          Image(image: AssetImage(
                                            "assets/images/logo.png",
                                          ),width:50,height: 50,),
                                          SizedBox(height: 15,),
                                          Text('Amount',
                                            style: TextStyle(fontSize: 10,
                                              color: Color(0xff868ca0),
                                              fontFamily:'Poppins',
                                            ),),
                                          SizedBox(height: 5,),
                                          Text('\u{20B9} 1000', style: TextStyle(fontSize: 17,
                                            color: Color(0xff25282d),
                                            fontFamily:'Poppins',
                                          ),),

                                        ],
                                      )
                                    ],
                                  ),
                                )



              ],),
        ),

               Positioned(
                  right: 0,
                  left: 0,
                  bottom: -60,

                 child: IconButton(
                     icon: const Icon(
                       Icons.close_outlined,
                       size: 26,
                       color: Colors.green,
                     ),
                     onPressed: () {
                       Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                           builder: (context) {
                             return const SpiaProfileViewScreen();
                           },
                         ),
                       );            },
                   ),),
               ],),
        ),
        // child: Container(
        //   height: 450,
        //   width: 400,
        //   color: Colors.greenAccent,
        //   child: Column(
        //     children: [
        //         Center(
        //          child: Image.asset(
        //                   "assets/images/check.png",
        //                   width: 50,height: 50,),
        //
        //
        //         ),
        //       Center(
        //         child: Container(
        //
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: themeColor,
        //           ),
        //           height: 400,
        //           width: 350,
        //           child: Padding(
        //             padding:
        //             const EdgeInsets.only(left: 10.0, right:10,  bottom: 50,top: 20),
        //             child: Container(
        //               // color: Colors.grey[100],
        //               height: size.height,
        //               width: size.width,
        //
        //               child: SingleChildScrollView(
        //                 child: Column(
        //                   children: [
        //
        //                     ClipRRect(
        //                       borderRadius: const BorderRadius.all(
        //                         Radius.circular(10.0),
        //                       ),
        //                       child:   CircleAvatar(
        //                         radius: 30.0,
        //                         backgroundColor: themeColor,
        //                         // backgroundImage: NetworkImage(
        //                         //   imageUrl + profileImg,
        //                         // ),
        //                         child: Image.asset(
        //                           "assets/images/donationimg.png",
        //
        //                           fit: BoxFit.fill,
        //                         ),
        //                       ),
        //                     ),
        //
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
