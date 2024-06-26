import 'package:flutter/material.dart';
import '../../common/colors.dart';
import '../Admin/news_list.dart';
import '../Admin/organizationinfo.dart';
import '../Admin/subscriptiondetailscreen.dart';
import '../add_product.dart';
import '../article/articles.dart';
import '../bloodgroup.dart';
import '../charitydetails.dart';
import '../contacts.dart';
import '../importantlink.dart';
import '../manage_members/active_members.dart';
import '../newsletters/news.dart';
import '../notification.dart';
import '../pay_donation.dart';
import '../support.dart';
class HomeAdminTab extends StatefulWidget {
  const  HomeAdminTab({Key? key}) : super(key: key);

  @override
  State<HomeAdminTab> createState() => _HomeAdminTabState();
}

class _HomeAdminTabState extends State<HomeAdminTab> {
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
           // height: size.height,
            width: size.width,
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
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
                                    return const ActiveMembers();
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
                                                    "assets/images/members.png",),

                                               // height: 30,

                                               // width: 30,
                                                color: Color(0xFF004D40),
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
                            'Manage Members',
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
                                    return const NewsList();
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
                                                      "assets/images/contact.png"), width:28,height: 28
                                                ,
                                                color: Color(0xFF004D40),
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
                            'News List',
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
                                    return const SubscriptionDetailsScreen();
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
                                                      "assets/images/article.png"),
                                                color: Color(0xFF004D40),
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
                            'Subscription',
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
                                    return const OrganizationInfoScreen();
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
                                                      "assets/images/news.png"),
                                                  color: Color(0xFF004D40),),
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
                            'Organization',
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
                                                    "assets/images/prodtsettings.png"),
                                                color: Color(0xFF004D40),
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
                            'Product Settings',
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

              ],
            ),
          ),
        ],
      ),
    );
}
}