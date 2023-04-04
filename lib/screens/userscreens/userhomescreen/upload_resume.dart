import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';
import 'job_detail_screen5.dart';

class UploadResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
                height: 210.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back, size: 25.sp),
                        Text(
                          'Apply to Blue IT GmbH',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 19.sp,
                            color: Color(0xff333F52),
                          ),
                        ),
                        Stack(
                          children: [
                            Icon(Icons.notifications_none, size: 25.sp),
                            Positioned(
                              left: 12.w,
                              top: 6.h,
                              child: Container(
                                height: 8.h,
                                width: 8.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFF0000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('assets/BlueIT.png'),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Farwa Zafar',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: lightDark,
                              ),
                            ),
                            Container(
                              width: 254.w,
                              height: 76.h,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vestibulum nisl, lorem nunc, vulputate dictum vitae at imperdiet. Non eu scelerisque at diam id.',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: lightDark,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 470.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Info:',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 7.h,
                          ),
                          width: 343.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Color(0xff209289), width: 1),
                          ),
                          child: Text(
                            'abc@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                          )),
                      Text(
                        'Mobile phone',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 7.h,
                        ),
                        width: 343.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Color(0xff209289), width: 1),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '+92',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down),
                            SizedBox(width: 5.w),
                            Container(
                              width: 1,
                              color: Color(0xff209289),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              '0000000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Upload resume',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                      Container(
                        width: 343.w,
                        height: 91.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff209289),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_upload_outlined,
                              color: Color(0xff209289),
                            ),
                            Text(
                              'Upload resume',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Color(0xff999898),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage('assets/pdf.png'),
                              ),
                              Text(
                                'Farwa Resume.pdf',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.sp,
                                  color: Color(0xff7D808C),
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.edit,
                            color: Color(0xff26958B),
                            size: 20.sp,
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      CommonButton(
                        buttonColor: Color(0xFFFF725E),
                        text: "Submit",
                        textColor: white,
                        borderSide: BorderSide.none,
                        buttonShadowColor: white,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.all(0),
                              //  title: Text("Application Success"),
                              //content:
                              actions: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(CupertinoIcons.clear, size: 20.sp),
                                      ],
                                    ),
                                    SizedBox(height: 5.h),
                                    Divider(
                                      color: Color(0xffE8E8E8),
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      'Application Success',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15.sp,
                                        color: lightDark,
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Container(
                                      width: 200.w,
                                      height: 36.h,
                                      child: Center(
                                        child: Text(
                                          'You have successfully applied to the job "name here"',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                JobdetailScreen5(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 45.h,
                                        color: orangeRed,
                                        child: Center(
                                          child: Text(
                                            'Back to Jobs',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
