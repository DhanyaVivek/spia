import 'package:flutter/material.dart';
import 'package:spia/controller/selectdistrictmembers.dart';

import '../ApiService/districtApiServices.dart';
import '../ApiService/districtlistApiServices.dart';
import '../common/colors.dart';
import '../model/modelDistrict.dart';
import '../model/modeldistrictlist.dart';
import 'contacts.dart';
import 'home/HomeScreen.dart';
class SelectDistrictPopup extends StatefulWidget {
  final String userid;
  const SelectDistrictPopup({Key? key, required this.userid}) : super(key: key);

  @override
  State<SelectDistrictPopup> createState() => _SelectDistrictPopupState();
}

class _SelectDistrictPopupState extends State<SelectDistrictPopup> {
  // final List<String> _listOfExpertise = [
  //   "Thiruvananthapuram",
  //   "Kollam",
  //   "Pathanamthitta",
  //   "Alappuzha",
  //   "Kottayam",
  //   "Idukki",
  //   "Ernakulam",
  //   "Thrissur",
  //   "Palakkad",
  // ];
  var district;
   List<bool> _isChecked = [];
  // @override
  // initState() {
  //   super.initState();
  // //  _isChecked = List<bool>.filled(_listOfExpertise.length, false);
  // }
  List<Districtlist>? districtlist = [];

  void initState() {
    super.initState();
    // statsdistrictApiCall();
    districtApiCall();
    _isChecked = List<bool>.filled(districtlist!.length, false);
  }
  districtApiCall() {
    DistrictlistApiService.districtApiCall(context).then((value) async {
      try {
        setState(() {
          print('hiiii');
          districtlist = ((value['districtlist'] ?? []) as List)
              .map((li) => Districtlist.fromJson(li))
              .toList();
          print(districtlist!.length);
          _isChecked = List<bool>.filled(districtlist!.length, false);
        });
      } catch (e) {
        //await progressDialog.hide();
      }
    });
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
                            "assets/images/contact.png"),
                        width:50,
                        height:40,
                      ),
                      SizedBox(height: 10,),
                      Text('Select District', style: TextStyle(
                        color: appBarColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SegoeUI-Semibold",
                      ),),

                      Container(
                          height: size.height*0.7,
                          child: ListView.builder(
                            itemCount: districtlist!.length,
                            itemBuilder: (BuildContext context, int i) {
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
                                    onChanged: (value)  {
                                      _isChecked[i] = value! ;
                                      setState(() {
                                        district = districtlist![i].id.toString();

                                      });
                                    },
                                    side: BorderSide(color:Colors.blue),
                                  ),
                                  title: Text(districtlist![i].districtName.toString(),style:
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return  SelectDistMembersScreen(district:district,userid:widget.userid);

                              },
                            ),
                          );
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
