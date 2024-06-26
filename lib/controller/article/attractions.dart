import 'package:flutter/material.dart';

import '../../ApiService/ArticlesApiServices.dart';
import '../../Utils/Connectivity.dart';
import '../../common/colors.dart';
import '../../model/modelArticles.dart';
import 'articles.dart';
import 'attraction_first.dart';
import 'attraction_second.dart';
import 'package:toast/toast.dart';

class AttractionsScreen extends StatefulWidget {
  final String userid;
  final String catid;
  final String subcatid;

  const AttractionsScreen(
      {Key? key,  required this.userid,  required this.catid,  required this.subcatid}) : super(key: key);

  @override
  State<AttractionsScreen> createState() => _AttractionsScreenState();
}

class _AttractionsScreenState extends State<AttractionsScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text('The Grenada Solution'),
    ),
    Tab(
      child: Text('Victory for American Queen'),
    ),
    Tab(
      child: Text('The Beaches of Fort Myers & Sanibel'),
    ),
  ];
  @override
  void initState() {
    //isLoaded = false;
    super.initState();
    apiCall();
  }
  List<Articles> articles = [];

  apiCall() {
    ConnectivityCheck.checkConnection().then((connectionResult) async {
      if (connectionResult) {
        //await progressDialog.show();
        apiFunc();
      } else {
        Toast.show("Please check your internet connection",
            duration: Toast.lengthShort, gravity: Toast.bottom);
        return;
      }
    });
  }

  apiFunc() {
    ArticlesApiServices.ArticlesApiCall(context,widget.catid,widget.subcatid).then((value) async {
      try {
        // progressDialog.hide();

        if (value['id'] != '') {
          setState(() {
            print('hiihh');

            articles = ((value['articles'] ?? []) as List)
                .map((li) => Articles.fromJson(li))
                .toList();

            print(articles.length);
          });
        } else {
          // Toast.show((value['message'].toString()),
          //     duration: Toast.lengthShort, gravity: Toast.bottom);
        }
        // Toast.show((value['message'].toString()),
        //     duration: Toast.lengthShort, gravity: Toast.bottom);
      } catch (e) {
        //await progressDialog.hide();
      }
    });
  }
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _tabController = TabController(length: myTabs.length, vsync: this);
  // }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: articles.length,
      child: Scaffold(
        backgroundColor: themeColor,
        appBar: AppBar(
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
                // context,
                // MaterialPageRoute(
                // builder: (context) {
                // return  ArticleScreen();
                // },
                // ),
                // );
              },
            ),
          ),
          title: const Text(
            "ATTRACTIONS",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                fontFamily: "SegoeUI-Semibold"),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 15,
              ),
              child: CircleAvatar(
                radius: 13.0,
                backgroundColor: themeColor,
                child: Image(
                  image: AssetImage(
                    "assets/images/home.png",
                  ),
                  width: 28,
                  height: 28,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: TabBar(
              indicatorColor: Color(0xff930303),
              labelColor: Colors.white,
              isScrollable: true,
              controller: _tabController,
              tabs: myTabs,
            ),
          ),
        ),
        body: Navigator(
          //   key: _navKey,
          onGenerateRoute: (_) => MaterialPageRoute(
            builder: (_) => TabBarView(
              controller: _tabController,
              children: [
                AttractionScreen1(),
                AttractionScreen2(),
                AttractionScreen1(),

                //CategoryList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
