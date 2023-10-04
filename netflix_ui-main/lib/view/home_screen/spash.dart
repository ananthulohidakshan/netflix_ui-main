import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash/view/home_screen/profile.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSplashScreen(
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.black,
        animationDuration: Duration(seconds: 2),
        splash: Container(
          child: Image.asset("assets/images/logos_netflix.png"),
        ),
        nextScreen: profile(),
      ),
    );
  }
}
