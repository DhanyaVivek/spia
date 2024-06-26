// import 'package:flutter/material.dart';
//
// import '../../common/colors.dart';
// import '../Spiaprofile/spiaprofile.dart';
// import '../charitydetails.dart';
// import '../contacts.dart';
// import '../partners/mypartners.dart';
// import '../pay_donation.dart';
// import 'HomeScreen.dart';
// import 'homeadmintab.dart';
// import 'homeusertab.dart';
// class TabController1 extends StatefulWidget {
//   const TabController1({Key? key}) : super(key: key);
//
//   @override
//   State<TabController1> createState() => _TabController1State();
// }
//
// class _TabController1State extends State<TabController1> {
//   late List<Widget> originalList;
//   late Map<int, bool> originalDic;
//   late List<Widget> listScreens;
//   late List<int> listScreensIndex;
//
//   int tabIndex = 0;
//   Color tabColor = appBarColor;
//   Color selectedTabColor = appBarColor;
//
//  Color indicatorColor = appBarColor;
//
//   @override
//   void initState() {
//     super.initState();
//
//     originalList = [
//       HomeUserTab(),
//       HomeAdminTab(),
//
//     ];
//     originalDic = {0: true, 1: false,};
//     listScreens = [originalList.first];
//     listScreensIndex = [0];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return MaterialApp(
//       color: Colors.yellow,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 60,
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Colors.white,
//
//           titleSpacing: 5,
//           //shadowColor: const Color(0xFF0105FC),
//           automaticallyImplyLeading: false,
//
//           leading: Builder(
//             builder: (context) => IconButton(
//               icon: const Icon(Icons.menu_rounded, size: 37, color: Colors.blue),
//               onPressed: () => Scaffold.of(context).openDrawer(),
//             ),
//           ),
//           title: Row(children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 15.0, bottom: 10, left: 50),
//               child: Image.asset(
//                 "assets/images/logo.png",
//                 height: 60,
//                 width: size.width * 0.15,
//               ),
//             ),
//             Text(
//               "SPIA",
//               style: TextStyle(
//                 color: Color(0xff6D6E70),
//               ),
//             ),
//           ]),
//           // title: Padding(
//           //   padding: const EdgeInsets.only(top: 15.0 ,bottom: 10),
//           //   child: Image.asset(
//           //     "assets/images/logo.png",
//           //     height: 60,
//           //     width: size.width * 0.15,
//           //   ),
//           // ),
//         ),
//         drawer: menuNav(),
//         body: IndexedStack(index:listScreensIndex.indexOf(tabIndex), children: listScreens),
//         bottomNavigationBar: _buildTabBar(),
//        // backgroundColor: Theme.of(context).primaryColor,
//       ),
//     );
//
//
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
//
//   Widget _buildTabBar() {
//     var listItems = [
//       BottomAppBarItem(iconData: Icons.home, text: 'Tab1'),
//       BottomAppBarItem(iconData: Icons.report_problem, text: 'Tab2'),
//
//     ];
//
//     var items = List.generate(listItems.length, (int index) {
//       return _buildTabItem(
//         item: listItems[index],
//         index: index,
//         onPressed: _selectedTab,
//       );
//     });
//
//     return BottomAppBar(
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: items,
//       ),
//       //color: appBarColor,
//     );
//   }
//
//   Widget _buildTabItem({
//     required BottomAppBarItem item,
//     required int index,
//     required ValueChanged<int> onPressed,
//   }) {
//     var color = tabIndex == index ? selectedTabColor : tabColor;
//     return Expanded(
//       child: SizedBox(
//         height: 60,
//         child: Material(
//           type: MaterialType.transparency,
//           child: InkWell(
//             onTap: () => onPressed(index),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(item.iconData, color: color, size: 24),
//                 Text(
//                   item.text,
//                   style: TextStyle(color: color, fontSize: 12),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   menuNav() {
//     Size size = MediaQuery.of(context).size;
//     return Drawer(
//       width: size.width * 0.85,
//       child: ListView(
//         children: [
//           Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.clear),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ]),
//           ListTile(
//             leading: Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Home',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) {
//               //       return const HomeScreen();
//               //     },
//               //   ),
//               // );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.person,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Profile',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const SpiaProfileViewScreen();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.real_estate_agent_rounded,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Donation',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const PaySpiaDonation();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.volunteer_activism,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Charity',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const CharityDetails();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.handshake,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'My Partners',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const MyPartners();
//                   },
//                 ),
//               );
//             },
//           ),
//           const Divider(
//             color: menutextColor,
//             height: 0.2,
//             thickness: 0.2,
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.logout_rounded,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'Logout',
//               style: TextStyle(
//                   color: menutextColor,
//                   fontFamily: "Roboto",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//             ),
//             visualDensity: const VisualDensity(vertical: 1),
//             onTap: () async {
//               // LoginScreen()
//               // SharedPreferences pref = await SharedPreferences.getInstance();
//               //await pref.clear();
//               Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ContactScreen()),
//                     (Route<dynamic> route) => false,
//               );
//             },
//           ),
//           const Divider(
//             color: appBarColor,
//             height: 0.5,
//             thickness: 0.2,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class BottomAppBarItem {
//   BottomAppBarItem({required this.iconData, required this.text});
//   IconData iconData;
//   String text;
//
// }
//
