import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/recommended_jobs.dart';

import 'otp_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Text(
                "Forgot",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: subAndTitleColorOnboarding,
                ),
              ),
              Text(
                "password?",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: subAndTitleColorOnboarding,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "We sent a link to your email",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff505050),
                ),
              ),
              Text(
                "Sannykhan@gmail.com",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Color(0xff505050),
                ),
              ),
              Text(
                "Please follow the instruction there",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff505050),
                ),
              ),
              Text(
                "before continue",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff505050),
                ),
              ),
              SizedBox(height: 25.sp),
              SizedBox(height: 52.h),
              CommonButton(
                buttonColor: Color(0xFFFF725E),
                text: "Continue",
                textColor: white,
                borderSide: BorderSide.none,
                buttonShadowColor: white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecommendedJobScreen(),
                    ),
                  );
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
