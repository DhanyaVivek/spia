import 'package:flutter/material.dart';
import 'package:spia/controller/home/homescreen3.dart';
import 'package:spia/controller/home/tab.dart';
import 'controller/Admin/news_list.dart';
import 'controller/events.dart';
import 'controller/home/HomeScreen.dart';
import 'controller/add_charity.dart';
import 'controller/add_donation.dart';
import 'controller/add_product.dart';
import 'controller/charitydetails.dart';
import 'controller/contacts.dart';
import 'controller/directorydetails.dart';
import 'controller/home/homedemo.dart';

import 'controller/home/homeusertab.dart';
import 'controller/home/tabdemo.dart';
import 'controller/importantlink.dart';
import 'controller/loginscreen.dart';
import 'controller/manage_members/active_members.dart';
import 'controller/manage_members/new_members.dart';
import 'controller/manage_members/renewal_members.dart';
import 'controller/my_directory.dart';
import 'controller/Admin/organizationinfo.dart';
import 'controller/otpscreen.dart';
import 'controller/pay_donation.dart';
import 'controller/spia_donation.dart';
import 'controller/Admin/subscriptiondetailscreen.dart';
import 'controller/splashscreen.dart';
import 'controller/viewcharity_donation.dart';
import 'fileupload/fileupload.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPIA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes t o "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
     // home: HomeScreen(userid: '',),
    home: LoginScreeen(),
    );
  }
}
