import 'package:flutter/material.dart';
import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';

import '../ApiService/eventApiServices.dart';
import '../Utils/Connectivity.dart';
import '../common/colors.dart';
import 'package:toast/toast.dart';

import '../model/modelEvents.dart';
import 'home/HomeScreen.dart';

class EventScreen extends StatefulWidget {
  final String userid;
  const EventScreen({Key? key, required this.userid}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  bool load = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }
  apiCall() {
    ConnectivityCheck.checkConnection().then((connectionResult) async {
      if (connectionResult) {
        print('hiihh');
        //await progressDialog.show();
        apiFunc();
      } else {
        Toast.show("Please check your internet connection",
            duration: Toast.lengthShort, gravity: Toast.bottom);
        return;
      }
    });
  }
  List<Eventlist> eventlist = [];
  apiFunc() {
    EventApiService.eventApiCall(context).then((value) async {
      try {
        if (value ['eventId']!= '') {
          setState(() {
            print('hiihh');
            eventlist = ((value['eventlist'] ?? []) as List)
                .map((li) => Eventlist.fromJson(li))
                .toList();
            print(eventlist.length);

          });
        } else {
          // Toast.show((value['message'].toString()),
          //     duration: Toast.lengthShort, gravity: Toast.bottom);
        }
      }
      catch (e) {
        //await progressDialog.hide();
      }
    });
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget horizontalList1 = new Container(

        margin: EdgeInsets.symmetric(vertical: 20.0),
        height:620,
        width: size.width,
        child:  FutureBuilder(builder: (BuildContext context, snapshot) {

       return   new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: eventlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                  child: Container(
                      width: 320.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Colors.black12
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 330, height: 150,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 5),
                            child: Container(
                              width: 310, height: 80, color: Colors.white,
                              child: Text(eventlist[index].eventName.toString()),
                            ),
                          ),
                          Expanded(child:
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10),
                            child: Container(
                              color: Colors.white,
                              child: SingleChildScrollView(
                                child: Text(eventlist[index].description.toString()),
                              )
                            ),
                          ),
                          ),
                          Container(
                            width: 310, height: 50, color: Colors.blueGrey,
                            child: Text("${eventlist[index].eventFrom.toString()} to ${eventlist[index].eventTo.toString()}"  )
                          )
                        ],
                      )

                  ),
                );
              }


          );

        }
        )
    );
    return new Scaffold(
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
          "Events",
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
              child: Image(image: AssetImage(
                "assets/images/home.png",
              ),width: 30,height: 30,),
            ),
          ),
        ],
      ),
      body: new Center(
        child: new Container(
        //  height: size.height,
          width: size.width,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              horizontalList1,

            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
}

//   @override
//   Widget build(BuildContext context) {
//     Widget tagList = Container(
//       color: Colors.green,
//       height: 100.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//         Container(
//         height: 150,
//         width: 320,
//         child: Card(
//           child: Image.network(
//             'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
//           ),
//         ),
//       )],
//           )
//         ],
//       ),
//     );
//
//     Widget boardView = Container(
//       color: Colors.blue,
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: 15,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             onTap: () {},
//             title: Row(
//               children: <Widget>[
//                 Expanded(child: Text("This is item name")),
//                 Text("12 Dec 18"),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//
//     //  int _value=0;
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 1.0,
//           title: Text("Test title"),
//         ),
//         body:Container(
//         width: double.infinity,
//     height:double.infinity,
//     child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     shrinkWrap: true,
//     itemCount: 3,
//     itemBuilder: (BuildContext context, int i) {
//     return Container(
//           color: Colors.amber,
//
//           child: new Column(
//             children: <Widget>[
//               tagList,
//               Expanded(
//                 child: boardView,
//               )
//             ],
//           ),
//           margin: EdgeInsets.all(10.0),
//     );
//         } ),)
//     );
//   }
 }