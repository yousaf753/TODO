import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main()=>runApp(splash());
class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('images/logo.png'),
        nextScreen: loginScreen(),
        splashTransition: SplashTransition.rotationTransition,
        duration: 1000,
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
