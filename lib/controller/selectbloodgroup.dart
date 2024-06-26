import 'package:flutter/material.dart';
import 'package:spia/common/colors.dart';
import 'package:spia/controller/bloodgroup.dart';
class SelectBloodGroup extends StatefulWidget {
  const SelectBloodGroup({Key? key}) : super(key: key);

  @override
  State<SelectBloodGroup> createState() => _SelectBloodGroupState();
}

class _SelectBloodGroupState extends State<SelectBloodGroup> {
  final List<String> _listOfExpertise = [
    "All",
    "A+",
    "B+",
    "AB+",
    "O+",
    "AB-",
    "A-",
        "B-",
        "0-",
  ];
  List<bool> _isChecked = [];
  @override
  initState() {
    super.initState();
    _isChecked = List<bool>.filled(_listOfExpertise.length, false);
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body:Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 80),
          child: ClipRRect(
          borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
    ),
    child: Container(
    height: 700,
    width: 400,
    color: Colors.white,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
                "assets/images/seltgroup.png"),
            width:50,
            height:40,
          ),
          SizedBox(height: 10,),
          Text('Select Blood Group', style: TextStyle(
            color: appBarColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: "SegoeUI-Semibold",
          ),),

          Container(
            height: size.height*0.7,
            child: ListView.builder(
            itemCount: _listOfExpertise.length,
            itemBuilder: (_, i) {
              return Card(
                elevation: 0,
                color: Color(0xfff4f9ff),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),

                ),
                child: ListTile(
                  dense: true,
                  leading: Checkbox(
                    checkColor: themeColor,
                    value: _isChecked[i],
                    onChanged: (val) => setState(() {
                      _isChecked[i] = val!;
                    }),
                    side: BorderSide(color:Colors.blue),
                  ),
                  title: Text(_listOfExpertise[i],style:
                  TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      fontFamily: "SegoeUI"),),
                ),
              );
            },
          )
          ),

            TextButton(
              onPressed: (){
                BloodGroupScreen();
              },
              child: Container(
                height: 45,
                width: size.width * 0.94,
                decoration: BoxDecoration(
                  color: Color(0xFF0949d6),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    "SUBMIT",
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
      ),)),
          )),
    );

  }
}
