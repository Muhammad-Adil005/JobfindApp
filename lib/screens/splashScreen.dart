import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/screens/userscreens/onboarding_screen/onboarding_screen1.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigatetoOnBoardingScreen();
  }

  void _navigatetoOnBoardingScreen() async {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => OnBoardingScreen()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/splash_logo.png'),
        ),
      ),
    );
  }
}
