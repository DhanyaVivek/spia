import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../add_product.dart';
import '../article/articles.dart';
import '../bloodgroup.dart';
import '../charitydetails.dart';
import '../contacts.dart';
import '../events.dart';
import '../importantlink.dart';
import '../newsletters/news.dart';
import '../notification.dart';
import '../pay_donation.dart';
import '../support.dart';
class HomeUserTab extends StatefulWidget {
  final String userid;
  const HomeUserTab({Key? key, required this.userid}) : super(key: key);

  @override
  State<HomeUserTab> createState() => _HomeUserTabState();
}

class _HomeUserTabState extends State<HomeUserTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
 return Container(
      height: size.height,
      width: size.width,
      color: themeColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: size.width,
            child: Card(
              elevation: 2.0,
              shadowColor: themeColor,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(0),
                ),
                child: Image.asset(
                  'assets/images/bannerimg.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
          //  height: size.height,
            width: size.width,
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return  ImportantLinkScreen(userid:widget.userid);
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 70 ,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/bitmapimg.png"),

                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Important Links',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return  ContactScreen(userid:widget.userid);
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                //  color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 70,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/contact.png"),
                                              width: 30,height: 30,),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Contacts',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return  ArticleScreen(userid:widget.userid);
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //   color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 70,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/article.png")),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Article',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return const NotificationScreen();
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                //  color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 70,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/notifications.png")),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Notifications',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return const SupportScreen();
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/support.png"),
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Support',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return  EventScreen(userid:widget.userid);
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                //  color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/events.png"),
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Events',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return  NewsScreen(userid:widget.userid);
                                  }));
                            },

                            child: Container(
                              height: 86,
                              width: 80,
                              //   color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/news.png"),
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'News Letters',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [

                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return const BloodGroupScreen();
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                //  color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/bloodgroup.png"),
                                                width: 80,
                                                height: 80,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Blood Group',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return const AddProductScreen();
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/ecart.png"),
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'A-Cart',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return const PaySpiaDonation();
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                //  color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/donations.png"),
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Donation',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return const CharityDetails();
                                  }));
                            },
                            child: Container(
                              height: 86,
                              width: 80,
                              //   color: Colors.green,
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color(0xffe0e0e0),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/charityy.png"),
                                                width: 70,
                                                height: 70,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Charity',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'SegoeUI-Semibold'),
                          )
                        ],
                      ),

                    ]),
              ],
            ),
          ),
        ],
      ),
    ); }
}