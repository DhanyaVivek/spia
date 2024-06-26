import 'package:flutter/material.dart';

import '../common/colors.dart';
import 'home/HomeScreen.dart';
class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
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
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const HomeScreen();
              //     },
              //   ),
              // );
              },
          ),
        ),
        title: const Text(
          "SUPPORT",
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10, left: 2, right: 2),
              child: Container(
                height: size.height * 0.8,
                width: size.width,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 20, bottom: 10),
                        child: Card(
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 45,
                                  child:  TextFormField(
                                    //controller: nameTextController,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      labelText: "Name",
                                      labelStyle: const TextStyle(
                                          fontFamily: "Roboto",
                                          color: Colors.black54,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300),
                                      fillColor: Colors.white,
                                      filled: true,
                                      counterText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,)
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 45,
                                  child:  TextFormField(
                                    //controller: nameTextController,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: const TextStyle(
                                          fontFamily: "Roboto",
                                          color: Colors.black54,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300),
                                      fillColor: Colors.white,
                                      filled: true,
                                      counterText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,)
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 45,
                                  child:  TextFormField(
                                    //controller: nameTextController,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      labelText: "Mobile no",
                                      labelStyle: const TextStyle(
                                          fontFamily: "Roboto",
                                          color: Colors.black54,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300),
                                      fillColor: Colors.white,
                                      filled: true,
                                      counterText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.phone,
                                      maxLength: 10)
                              ),

                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 45,
                                child: TextFormField(
                                  // controller: mob,

                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      labelText: "Message",
                                      labelStyle: const TextStyle(
                                          fontFamily: "Roboto",
                                          color: Colors.black54,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300),
                                      fillColor: Colors.white,
                                      filled: true,
                                      counterText: "",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                   ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              SizedBox(height: 15,),
                              TextButton(
                                onPressed: (){

                                },
                                child: Container(
                                  height: 45,
                                  width: size.width * 0.9,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0949d6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "SUBMIT ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),


    );
  }
}
