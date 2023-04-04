import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/userscreens/onboarding_screen/widget/Container.dart';

import '../../../constants/constants.dart';
import 'onboardig_screen3.dart';
import 'onboarding_screen1.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/Interview.png'),
            ),
            SizedBox(height: 20.h),
            Text(
              'Job oppertunities near you',
              style: TextStyle(
                color: subAndTitleColorOnboarding,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 320.w,
                child: Text(
                  'Get job recommendation, search and save job opportunity in your gadget',
                  style: TextStyle(
                    color: subAndTitleColorOnboarding,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnBoardingScreen3(),
                  ),
                );
              },
              child: MyContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
