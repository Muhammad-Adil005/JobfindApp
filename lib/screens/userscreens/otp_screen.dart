import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import 'generate_referral_code.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GenerateOTP(),
                    ),
                  );
                },
                child: Text(
                  "Enter OTP",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: subAndTitleColorOnboarding,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Enter the OTP sent to +91 65296 69595",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff505050),
                ),
              ),
              SizedBox(height: 25.sp),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50.w,
                style: TextStyle(fontSize: 17.sp),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                // onCompleted: (pin) {
                //   print("Completed: " + pin);
                // },
                otpFieldStyle: OtpFieldStyle(
                  borderColor: Colors.black,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
