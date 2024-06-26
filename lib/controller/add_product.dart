import 'package:flutter/material.dart';

import '../common/colors.dart';
import 'home/HomeScreen.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String dropdownValue = 'product1';
  String dropdownValues = '100';
  String quantitydropdown = '1';
  bool value = false;

  List <String> products = [
    'product1',
    'product2',
    'product3',
    'product4',

  ] ;
  List <String> varient = [
    '100',
    '200',
    '300',
     ] ;
  List <String> quantity = [
    '1','2', '3','4','5','6' ] ;
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
          "PRODUCT",
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
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                              color: Color(0xffe0e0e0),
                            ),),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [

                                SizedBox(
                                  child:   Container(
                                    height: 45,
                                    width: size.width,

                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 1.0,color: Colors.black54),
                                      borderRadius: const BorderRadius.all(Radius.circular(10)
                                      ),
                                    ),

                                    child: DropdownButtonHideUnderline(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: DropdownButton<String>(
                                          isExpanded: true,
                                          value: dropdownValue,
                                          hint: Text("Choose Product"),
                                          icon: const Icon(Icons.arrow_drop_down),
                                          iconSize: 24,
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                                          onChanged: (data) {
                                            setState(() {
                                              dropdownValue = data.toString();
                                            });
                                          },
                                          items: products.map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),

                                SizedBox(
                                  child:   Container(
                                    height: 45,
                                    width: size.width,

                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 1.0,color: Colors.black54),
                                      borderRadius: const BorderRadius.all(Radius.circular(10)
                                      ),
                                    ),

                                    child: DropdownButtonHideUnderline(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: DropdownButton<String>(
                                          isExpanded: true,
                                          value: dropdownValues,
                                          hint: Text("Choose Varient"),
                                          icon: const Icon(Icons.arrow_drop_down),
                                          iconSize: 24,
                                          elevation: 16,
                                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                                          onChanged: (data) {
                                            setState(() {
                                              dropdownValues = data.toString();
                                            });
                                          },
                                          items: varient.map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
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
                                        labelText: "Enter Quantity",
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

                                TextButton(
                                  onPressed: (){

                                  },
                                  child: Container(
                                    height: 42,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0949d6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Find",
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
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GST No'),
                                    SizedBox(width: 180,),
                                    Text('203435230'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Amount'),
                                    SizedBox(width: 200,),
                                    Text('\u{20B9} 2000'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GST:(12%)'),
                                    SizedBox(width: 200,),
                                    Text('\u{20B9} 130'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('CESS:(0%)'),
                                    SizedBox(width: 200,),
                                    Text('\u{20B9} 10'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                              Divider(
                                height: 5,
                                thickness: 2,
                                color: Colors.black54,
                        ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Total Amount'),
                                    SizedBox(width: 180,),
                                    Text('\u{20B9} 2170'),
                                  ],
                                ),
                                SizedBox(height: 10,),

                              ],

                            ),

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

