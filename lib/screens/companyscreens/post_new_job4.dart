import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';

class PostNewJob4 extends StatefulWidget {
  const PostNewJob4({Key? key}) : super(key: key);

  @override
  State<PostNewJob4> createState() => _PostNewJob4State();
}

class _PostNewJob4State extends State<PostNewJob4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    'Post New job',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color: subAndTitleColorOnboarding,
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              Text(
                'Review',
                style: Fivehundred20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7D808C),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 292.w,
                    height: 46.h,
                    child: Text(
                      'Answer the phone when candidates call you and respond on whatsapp',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Color(0xff585858),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7D808C),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 292.w,
                    height: 46.h,
                    child: Text(
                      'Answer the phone when candidates call you and respond on whatsapp',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Color(0xff585858),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7D808C),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 292.w,
                    height: 46.h,
                    child: Text(
                      'Answer the phone when candidates call you and respond on whatsapp',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Color(0xff585858),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7D808C),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 292.w,
                    height: 46.h,
                    child: Text(
                      'Answer the phone when candidates call you and respond on whatsapp',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Color(0xff585858),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7D808C),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 292.w,
                    height: 46.h,
                    child: Text(
                      'Answer the phone when candidates call you and respond on whatsapp',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Color(0xff585858),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 132.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      // color: Color(0xffFF725E),
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffFF725E),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Color(0xffFF725E),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    width: 132.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFF725E),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        'Post the Job',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
