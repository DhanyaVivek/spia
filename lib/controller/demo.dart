// import 'package:flutter/material.dart';
//
//
// class DemoScreen extends StatefulWidget {
//   const DemoScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DemoScreen> createState() => _DemoScreenState();
// }
//
//
//
// class _DemoScreenState extends State<DemoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("LIST VIEW:1",style: TextStyle(fontWeight: FontWeight.bold),),
//               SizedBox(height: 20,),
//               Expanded(
//                 //  flex: 1,
//                   child:Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       //color: Colors.green,
//                     ),
//                     height: 20,
//                     child: ListView.builder(
//                         itemCount: 20,
//                         itemBuilder: (context, index){
//                           return Card(
//                             color: Color(0x4DFFFFFF),
//                             child: Stack(
//
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height:40,
//                                     width: 400,
//                                     decoration: BoxDecoration(
//
//                                       color: Color(0x1fFFFFFF),
//                                       borderRadius: BorderRadius.circular(10)
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text('hgdgfydft'),
//                                     ),
//                                   ),
//                                 ),
//
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 60,left: 10,right: 10,bottom: 10),
//                                   child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
//                                 )
//                               ],
//                             ),
//
//
//                             // child: ListTile(
//                             //   title: Text("Name"),
//                             //   subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
//                             // ),
//                           );
//                         }
//                     ),
//                   )
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
/////checkbox////////
// import 'package:flutter/material.dart';
//
// class CheckBoxExample extends StatefulWidget {
//   const CheckBoxExample({Key? key}) : super(key: key);
//
//   @override
//   State<CheckBoxExample> createState() => _CheckBoxExampleState();
// }
//
// class _CheckBoxExampleState extends State<CheckBoxExample> {
//   //List multipleSelected = [];
//   List checkListItems = [
//     {
//       "id": 0,
//       "value": false,
//       "title": "Sunday",
//     },
//     {
//       "id": 1,
//       "value": false,
//       "title": "Monday",
//     },
//     {
//       "id": 2,
//       "value": false,
//       "title": "Tuesday",
//     },
//     {
//       "id": 3,
//       "value": false,
//       "title": "Wednesday",
//     },
//     {
//       "id": 4,
//       "value": false,
//       "title": "Thursday",
//     },
//     {
//       "id": 5,
//       "value": false,
//       "title": "Friday",
//     },
//     {
//       "id": 6,
//       "value": false,
//       "title": "Saturday",
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
//         child: Column(
//           children: [
//             Column(
//               children: List.generate(
//                 checkListItems.length,
//                     (index) => CheckboxListTile(
//                   controlAffinity: ListTileControlAffinity.leading,
//                   contentPadding: EdgeInsets.zero,
//                   dense: true,
//                   title: Text(
//                     checkListItems[index]["title"],
//                     style: const TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                   value: checkListItems[index]["value"],
//                   onChanged: (newvalue) {
//                     setState(() {
//                       checkListItems[index]["value"] = newvalue;
//                       // if (multipleSelected.contains(checkListItems[index])) {
//                       //   multipleSelected.remove(checkListItems[index]);
//                       // } else {
//                       //   multipleSelected.add(checkListItems[index]);
//                       // }
//                     });
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(height: 64.0),
//             // Text(
//             //   multipleSelected.isEmpty ? "" : multipleSelected.toString(),
//             //   style: const TextStyle(
//             //     fontSize: 22.0,
//             //     color: Colors.black,
//             //     fontWeight: FontWeight.bold,
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({Key? key}) : super(key: key);

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  final List<String> _listOfExpertise = [
    "Flutter",
    "Kotlin",
    "React Native",
    "Android",
    "Python"
  ];
  List<bool> _isChecked = [];

  @override
  initState() {
    super.initState();
    _isChecked = List<bool>.filled(_listOfExpertise.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.03),
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.7),
        title: const Text("Flutter Checkbox"),
      ),
      body: buildView(context),
    );
  }

  Widget buildView(BuildContext context) {
    return ListView.builder(
      itemCount: _listOfExpertise.length,
      itemBuilder: (_, i) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            side: BorderSide(
              color: Colors.purple.withOpacity(0.7),
              width: 0.6,
            ),
          ),
          child: ListTile(
            dense: true,
            leading: Checkbox(
              value: _isChecked[i],
              onChanged: (val) => setState(() {
                _isChecked[i] = val!;
              }),
            ),
            title: Text(_listOfExpertise[i]),
          ),
        );
      },
    );
  }
}