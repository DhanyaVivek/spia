// import 'package:flutter/material.dart';
// import 'package:spia/common/colors.dart';
// import 'package:spia/controller/partners/mypartners.dart';
// import 'package:spia/controller/pay_donation.dart';
// import 'package:spia/controller/Spiaprofile/spiaprofile.dart';
// import 'package:spia/controller/support.dart';
//
// import '../article/articles.dart';
// import '../contacts.dart';
// import '../add_product.dart';
//
// import '../bloodgroup.dart';
// import '../charitydetails.dart';
// import '../importantlink.dart';
// import '../newsletters/news.dart';
// import '../notification.dart';
// class Homescreen3 extends StatefulWidget {
//   const Homescreen3({Key? key}) : super(key: key);
//
//   @override
//   State<Homescreen3> createState() => _Homescreen3State();
// }
//
// class _Homescreen3State extends State<Homescreen3> {
//   int i = 0;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: appBarColor,
//       appBar: AppBar(
//         toolbarHeight: 60,
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.white,
//
//         titleSpacing: 5,
//         //shadowColor: const Color(0xFF0105FC),
//         automaticallyImplyLeading: false,
//
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: const Icon(Icons.menu_rounded, size: 37, color: Colors.blue),
//             onPressed: () => Scaffold.of(context).openDrawer(),
//           ),
//         ),
//         title: Row(children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(top: 15.0, bottom: 10, left: 50),
//             child: Image.asset(
//               "assets/images/logo.png",
//               height: 60,
//               width: size.width * 0.15,
//             ),
//           ),
//           Text(
//             "SPIA",
//             style: TextStyle(
//               color: Color(0xff6D6E70),
//             ),
//           ),
//         ]),
//         // title: Padding(
//         //   padding: const EdgeInsets.only(top: 15.0 ,bottom: 10),
//         //   child: Image.asset(
//         //     "assets/images/logo.png",
//         //     height: 60,
//         //     width: size.width * 0.15,
//         //   ),
//         // ),
//       ),
//       drawer: menuNav(),
// bottomNavigationBar: _buildBottomBar(),
//       body: SingleChildScrollView(
//         child: Container(
//           height: size.height,
//           width: size.width,
//           color: themeColor,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 200,
//                 width: size.width,
//                 child: Card(
//                   elevation: 2.0,
//                   shadowColor: themeColor,
//                   child: ClipRRect(
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(0),
//                     ),
//                     child: Image.asset(
//                       'assets/images/bannerimg.png',
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: size.height,
//                 width: size.width,
//                 padding: const EdgeInsets.only(left: 20.0, right: 20),
//                 child: Column(
//                   children: [
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const ImportantLinkScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     // color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           SizedBox(
//                                               height: 70,
//                                               width: 80,
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/bitmapimg.png"),
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Important Links',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const ContactScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     //  color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           SizedBox(
//                                               height: 70,
//                                               width: 80,
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                     image: AssetImage(
//                                                         "assets/images/contact.png")),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Contacts',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const ArticleScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //   color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     // color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           SizedBox(
//                                               height: 70,
//                                               width: 80,
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                     image: AssetImage(
//                                                         "assets/images/article.png")),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Article',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const NotificationScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     //  color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           SizedBox(
//                                               height: 70,
//                                               width: 80,
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                     image: AssetImage(
//                                                         "assets/images/notification.png")),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Notifications',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                         ]),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const SupportScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     // color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           Flexible(
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/support.png"),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Support',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 height: 86,
//                                 width: 80,
//                                 //color: Colors.green,
//                                 child: Card(
//                                   elevation: 0,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     side: BorderSide(
//                                       color: Color(0xffe0e0e0),
//                                     ),
//                                   ),
//                                   //  color: Colors.grey,
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     child: Column(
//                                       children: [
//                                         Flexible(
//                                             child: ClipRRect(
//                                               borderRadius:
//                                               BorderRadius.circular(10),
//                                               child: Image(
//                                                 image: AssetImage(
//                                                     "assets/images/events.png"),
//                                                 width: 70,
//                                                 height: 70,
//                                               ),
//                                             )),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Events',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const NewsScreen();
//                                       }));
//                                 },
//
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //   color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     // color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           Flexible(
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/news.png"),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'News Letters',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const BloodGroupScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     //  color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           Flexible(
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/bloodgroup.png"),
//                                                   width: 80,
//                                                   height: 80,
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Blood Group',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                         ]),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const AddProductScreen();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     // color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           Flexible(
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/ecart.png"),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'A-Cart',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const PaySpiaDonation();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     //  color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           Flexible(
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/donation.png"),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Donation',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Column(
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                         return const CharityDetails();
//                                       }));
//                                 },
//                                 child: Container(
//                                   height: 86,
//                                   width: 80,
//                                   //   color: Colors.green,
//                                   child: Card(
//                                     elevation: 0,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                       side: BorderSide(
//                                         color: Color(0xffe0e0e0),
//                                       ),
//                                     ),
//                                     // color: Colors.grey,
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       child: Column(
//                                         children: [
//                                           Flexible(
//                                               child: ClipRRect(
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                                 child: Image(
//                                                   image: AssetImage(
//                                                       "assets/images/charity_1.png"),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               )),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 'Charity',
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontFamily: 'SegoeUI-Semibold'),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                         ]),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget menuNav() {
//     Size size = MediaQuery.of(context).size;
//     return Drawer(
//       width: size.width * 0.85,
//       child: ListView(
//         children: [
//           Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.clear),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ]),
//           ListTile(
//             leading: Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Home',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const Homescreen3();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.person,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Profile',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const SpiaProfileViewScreen();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.real_estate_agent_rounded,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Donation',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const PaySpiaDonation();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.volunteer_activism,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Charity',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const CharityDetails();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.handshake,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'My Partners',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const MyPartners();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.logout_rounded,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Logout',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () async {
//               // LoginScreen()
//               // SharedPreferences pref = await SharedPreferences.getInstance();
//               //await pref.clear();
//               Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ContactScreen()),
//                     (Route<dynamic> route) => false,
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.5,
//             thickness: 0.2,
//           ),
//         ],
//       ),
//     );
//   }
//   Widget bottomNav() {
//     return BottomNavigationBar(
//
//         onTap: (index) {
//           setState(() {
//             i = index;
//             print(i);
//           });
//         },
//   backgroundColor: Colors.blue,
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//
//         selectedFontSize: 10,
//         unselectedFontSize: 10,
//         selectedLabelStyle: const TextStyle(color: appBarColor),
//         unselectedLabelStyle: const TextStyle(color: appBarColor),
//
//         items: <BottomNavigationBarItem>[
//
//           BottomNavigationBarItem(
//
//             icon: Padding(
//               padding: const EdgeInsets.only(bottom: 5.0),
//
//               child: Image.asset(
//                 i==0?  "assets/images/home.png":"assets/images/home.png",
//                 color: appBarColor,
//                 height: 20,
//                 width: 22,
//               ),
//             ),
//            // activeColor: Colors.green,
//           //  inactiveColor: _inactiveColor,
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//
//           ),
//
//
//         ],
//         type: BottomNavigationBarType.fixed,
//         currentIndex: i,
//        // backgroundColor: Colors.white,
//
//         iconSize: 30,
//         //onTap: _onItemTapped,
//         selectedItemColor: appBarColor,
//         unselectedItemColor: Colors.grey[500],
//
//
//         elevation: 20);
//   }
//   // Widget _buildBottomBar(){
//   //   var _currentIndex;
//   //   return BottomNavigationBar(
//   //     containerHeight: 70,
//   //     backgroundColor: Colors.black,
//   //     selectedIndex: _currentIndex,
//   //     showElevation: true,
//   //     itemCornerRadius: 24,
//   //     curve: Curves.easeIn,
//   //     onItemSelected: (index) => setState(() => _currentIndex = index),
//   //     items: <BottomNavyBarItem>[
//   //       BottomNavyBarItem(
//   //         icon: Icon(Icons.apps),
//   //         title: Text('Home'),
//   //         activeColor: Colors.green,
//   //         inactiveColor: _inactiveColor,
//   //         textAlign: TextAlign.center,
//   //       ),
//   //       BottomNavyBarItem(
//   //         icon: Icon(Icons.people),
//   //         title: Text('Users'),
//   //         activeColor: Colors.purpleAccent,
//   //         inactiveColor: _inactiveColor,
//   //         textAlign: TextAlign.center,
//   //       ),
//   //       BottomNavyBarItem(
//   //         icon: Icon(Icons.message),
//   //         title: Text(
//   //           'Messages ',
//   //         ),
//   //         activeColor: Colors.pink,
//   //         inactiveColor: _inactiveColor,
//   //         textAlign: TextAlign.center,
//   //       ),
//   //
//   //     ],
//   //   );
//   // }
// }
//
// _buildBottomBar() {
// }
