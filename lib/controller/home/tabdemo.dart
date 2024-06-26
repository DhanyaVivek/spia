// import 'package:flutter/material.dart';
//
// import 'homeadmintab.dart';
// import 'homeusertab.dart';
//
//
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({Key? key}) : super(key: key);
//
//   @override/
//   State<HomeScreen2> createState() => _HomeScreen2State();
// }
//
// class _HomeScreen2State extends State<HomeScreen2> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   //int _activeIndex = 0;
//
//   late List<Widget> originalList;
//   int tabIndex = 0;
//
//   late Map<int, bool> originalDic;
//   late List<Widget> listScreens;
//   late List<int> listScreensIndex;
//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//     originalList = [
//       HomeUserTab(),
//       HomeAdminTab(),
//
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Center(
//             child: Container(
//
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(
//                 width: 1.2,color: Color(0xFF0949d6),
//               ),
//             ),
//               child: TabBar(
//                 controller: _tabController,
//                 indicatorColor: Colors.transparent,
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Color(0xFF0949d6),
//                 labelStyle: TextStyle(
//                   fontSize: 16,
//                 ),
//                 unselectedLabelStyle: TextStyle(
//                   fontSize: 16,
//                 ),
//                 indicator: BoxDecoration(
//                   color: Color(0xFF0949d6),
//
//                 ),
//                 tabs: <Widget>[
//                   Tab(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//
//                         Icon(
//                           Icons.person,
//                           size: 30,
//
//                        //   color: Colors.blueGrey,
//                         ),
//                         Text('user'),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//
//                        Icon(
//                           Icons.settings,
//                           size: 30,
//
//                          // color: Colors.blueGrey,
//                         ),
//                         Text('Admin'),
//                       ],
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _selectedTab(int index) {
//     if (originalDic[index] == false) {
//       listScreensIndex.add(index);
//       originalDic[index] = true;
//       listScreensIndex.sort();
//       listScreens = listScreensIndex.map((index) {
//         return originalList[index];
//       }).toList();
//     }
//
//     setState(() {
//       tabIndex = index;
//     });
//   }
// }
