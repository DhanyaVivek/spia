 import 'package:flutter/material.dart';

import '../../common/colors.dart';

class AttractionScreen1 extends StatefulWidget {
  const AttractionScreen1({Key? key}) : super(key: key);

  @override
  State<AttractionScreen1> createState() => _AttractionScreen1State();
}

class _AttractionScreen1State extends State<AttractionScreen1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Container(
        height: size.height,
        width: size.width,
        color: themeColor,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

    Container(
    height: 200,
    width: size.width,
    child: Card(
    elevation: 2.0,
    shadowColor: themeColor,

    child: ClipRRect(
    borderRadius: const BorderRadius.all(
    Radius.circular(0),
    ),
    child: Image.asset(

    'assets/images/no-image.png',
    fit: BoxFit.fill,
    ),
    ),
    ),
    ),
    SizedBox(
    height: 20,
    ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          )

    ]),);
  }
}
