import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/userscreens/usereditprofilescreen/add_education.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../bottomNavigationBar/CompanyBottomNavigationBar.dart';
import '../../bottomNavigationBar/UserBottomNavigationBar.dart';

class OTPSuccessful extends StatefulWidget {
  const OTPSuccessful({Key? key}) : super(key: key);

  @override
  _OTPSuccessfulState createState() => _OTPSuccessfulState();
}

class _OTPSuccessfulState extends State<OTPSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Referral Code",
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: subAndTitleColorOnboarding,
                    ),
                  ),
                ],
              ),
              Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/scan.png'),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 300.w,
                  child: Text(
                    'Referral code successfully generated continue to app',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      color: subAndTitleColorOnboarding,
                    ),
                  ),
                ),
              ),
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
                      builder: (context) => UserbottomNavigationBar(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
