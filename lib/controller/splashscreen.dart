import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'home/HomeScreen.dart';
import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedSplashScreen(
            duration: 1000,
            splash: splashWidget(),
            nextScreen: LoginScreeen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.rightToLeft,
            backgroundColor: Colors.white),
      ),
    );
  }
  Widget splashWidget() {
    Size size = MediaQuery.of(context).size;

    return Image.asset("assets/images/splashimg.png",height: 600,width: size.width*0.6,fit: BoxFit.cover,);

  }
}

