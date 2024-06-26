import 'package:flutter/material.dart';

import '../../ApiService/articleSubCategoryApiServices.dart';
import '../../Utils/Connectivity.dart';
import '../../common/colors.dart';
import '../../model/modelArticlesuncategory.dart';
import 'articles.dart';
import 'attractions.dart';
import 'package:toast/toast.dart';
class OurDirectoryScreen extends StatefulWidget {
  final String catid;
  final String userid;
  const OurDirectoryScreen({Key? key, required this.catid, required this.userid,}) : super(key: key);

  @override
  State<OurDirectoryScreen> createState() => _OurDirectoryScreenState();
}

class _OurDirectoryScreenState extends State<OurDirectoryScreen> {
  bool load = false;

  @override
  void initState() {
    //isLoaded = false;
    super.initState();
    apiCall();
  }

  List<Articlesubcategory> articlesubcategory = [];
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
    ArticleSubCategoryApiServices.ArticlesubcatApiCall(context,widget.catid).then((value) async {
      try {
        // progressDialog.hide();

        if (value['id'] != '') {
          setState(() {
            print('hiihh');

            articlesubcategory = ((value['articlesubcategory'] ?? []) as List)
                .map((li) => Articlesubcategory.fromJson(li))
                .toList();

            print(articlesubcategory.length);
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
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  ArticleScreen(userid: widget.userid,);
                  },
                ),
              );
              },
          ),
        ),
        title: const Text(
          "OUR DIRECTORY",
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
                          itemCount: articlesubcategory.length,
                          itemBuilder: (BuildContext context, int index) {
                            return  GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (context) {
                                  return  AttractionsScreen(catid:widget.catid,subcatid:articlesubcategory[index].subCategory.toString(),userid:widget.userid);
                                }));
                              },
                              child: ListTile(
                                  leading:  Image(image: AssetImage(
                                    "assets/images/news.png",
                                  ),height: 30,width: 30,),

                                  title: Text(articlesubcategory[index].subCategory.toString(),style:
                            TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            fontFamily: "SegoeUI-Semibold"),)));

                          },
                          separatorBuilder: (context, index) {
                            return Divider(thickness: 0.75,
                              indent: 15,
                              endIndent: 20,
                              height:2,
                            );
                          },
                        );}
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
