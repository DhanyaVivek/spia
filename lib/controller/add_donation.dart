import 'package:flutter/material.dart';

import '../common/colors.dart';
import 'home/HomeScreen.dart';
class AddDonationScreen extends StatefulWidget {
  const AddDonationScreen({Key? key}) : super(key: key);

  @override
  State<AddDonationScreen> createState() => _AddDonationScreenState();
}

class _AddDonationScreenState extends State<AddDonationScreen> {
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
              Icons.arrow_back,
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
          "ADD DONATION",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              fontFamily: "Poppins"),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 15,),
            child: CircleAvatar(
              radius: 13.0,
              backgroundColor: themeColor,
              backgroundImage: AssetImage(
                "assets/images/home.png",
              ),
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
                                    labelText: "Donation Type",
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
                                    labelText: "Amount",
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
                                  keyboardType: TextInputType.number,)
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
                                    labelText: "Description",
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
                                  minLines: 6, // any number you need (It works as the rows for the textarea)
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,)
                            ),

                            const SizedBox(
                              height: 40,
                            ),

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
                                    "Add Donation",
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
