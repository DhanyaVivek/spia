import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../home/HomeScreen.dart';
class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: themeColor,

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
              //       return const HomeScreen(userid: ,);
              //     },
              //   ),
              // );
              },
          ),
        ),
        title: const Text(
          "NEWS LIST",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              fontFamily: "SegoeUI-Semibold"),
        ),
        actions:  const [

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
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 10, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // flex: 1,
                    child:Container(
                      height:550,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        //color: Colors.green,
                      ),

                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index){
                            return Card(
                              color: Color(0x4DFFFFFF),
                              child: Stack(

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height:40,
                                      width: 400,
                                      decoration: BoxDecoration(

                                          color: Color(0x7300000),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('STATE COMITTE MEETING'),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 60,left: 15,right: 10,bottom: 10),
                                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                                  ),

                                ],
                              ),


                              // child: ListTile(
                              //   title: Text("Name"),
                              //   subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              // ),
                            );
                          }
                      ),

                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      backgroundColor: Colors.blueGrey,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}
