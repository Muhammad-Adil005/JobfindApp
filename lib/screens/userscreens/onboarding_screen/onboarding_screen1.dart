import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/userscreens/onboarding_screen/widget/Container.dart';

import '../../../constants/constants.dart';
import 'onboarding_screen2.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
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
              image: AssetImage('assets/people.png'),
            ),
            SizedBox(height: 20.h),
            Text(
              'Find your dream job!',
              style: TextStyle(
                color: subAndTitleColorOnboarding,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              width: 300.w,
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
            SizedBox(height: 60.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoardingScreen2()),
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
