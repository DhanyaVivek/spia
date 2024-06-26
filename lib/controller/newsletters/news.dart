import 'package:flutter/material.dart';

import '../../ApiService/newsCategoryApiServices.dart';
import '../../Utils/Connectivity.dart';
import '../../common/colors.dart';
import '../../model/modelNewsletterCategory.dart';
import '../home/HomeScreen.dart';
import 'package:toast/toast.dart';

import 'newslettersubcategory.dart';

class NewsScreen extends StatefulWidget {
  final String userid;
  const NewsScreen({Key? key, required this.userid}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool load = false;
  @override
  void initState() {
    //isLoaded = false;
    super.initState();
    ApiCall();
  }

  List<Newslettercategory> newslettercategory = [];
  ApiCall() {
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
    NewsLetterCategoryApiService.newscategoryApiCall(context).then((value) async {
      try {
        // progressDialog.hide();

        if (value['id'] != '') {
          setState(() {
            print('hiihh');

            newslettercategory = ((value['newslettercategory'] ?? []) as List)
                .map((li) => Newslettercategory.fromJson(li))
                .toList();

            print(newslettercategory.length);
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  HomeScreen(userid:widget.userid);
                  },
                ),
              );
              },
          ),
        ),
        title: const Text(
          "NEWS LETTERS",
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
                      child: FutureBuilder( builder: (BuildContext context, snapshot) {
                     return ListView.separated(
                          itemCount: newslettercategory.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                      return  NewsletterSubCategory(catid:newslettercategory[index].id.toString(),
                                          userid:widget.userid,title:newslettercategory[index].category.toString());
                                    }));
                              },
                              child: ListTile(
                                  leading:  Image(image: AssetImage(
                                    "assets/images/news.png",
                                  ),width: 30,height: 30,),

                                  title: Text(newslettercategory[index].category.toString())),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(thickness: 0.75,
                              indent: 15,
                              endIndent: 20,
                              height:2,
                            );
                          },
                        );
  } ),
                    )
                  ],
                ),
              )

          )
      ),
    );
  }
}
