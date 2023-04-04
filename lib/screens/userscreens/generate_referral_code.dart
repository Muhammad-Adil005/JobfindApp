import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/recommended_jobs.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import 'OTP_Successful.dart';

class GenerateOTP extends StatefulWidget {
  const GenerateOTP({Key? key}) : super(key: key);

  @override
  _GenerateOTPState createState() => _GenerateOTPState();
}

class _GenerateOTPState extends State<GenerateOTP> {
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
              MyTextField(
                hintText: 'Referral code (optional)',
                prefixIcon: Icons.qr_code,
                sufixIcon: Icons.remove_red_eye_outlined,
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
                      builder: (context) => RecommendedJobScreen(),
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

class MyTextField extends StatelessWidget {
  MyTextField({
    this.hintText,
    this.prefixIcon,
    this.sufixIcon,
  });

  final String? hintText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          fontSize: 15.sp,
          color: Colors.grey,
        ),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon, color: IconColor, size: 20.sp),
        suffixIcon: Icon(sufixIcon, color: IconColor, size: 20.sp),
      ),
    );
  }
}
