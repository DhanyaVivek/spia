import 'package:flutter/material.dart';

import '../../common/colors.dart';
class AttractionScreen2 extends StatefulWidget {
  const AttractionScreen2({Key? key}) : super(key: key);

  @override
  State<AttractionScreen2> createState() => _AttractionScreen2State();
}

class _AttractionScreen2State extends State<AttractionScreen2> {
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
            const SizedBox(
              height: 10,
            ),
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

                    'assets/images/bannerimg.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('hi')

          ]),);
  }
}

