import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class JobdetailScreen5 extends StatelessWidget {
  const JobdetailScreen5({Key? key}) : super(key: key);

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
                height: 235.h,
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
                          'Senior UI Designer',
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
                    SizedBox(height: 10.h),
                    Row(
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
                              'Blue IT GmbH',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: lightDark,
                              ),
                            ),
                            Text(
                              'Pakistan (Remote)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: lightDark,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Icon(
                          Icons.work_outline,
                          color: Color(0xff209289),
                          size: 18.sp,
                        ),
                        SizedBox(width: 10.sp),
                        Text(
                          'Full time (mid-senior level)',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.person_2,
                          color: Color(0xff209289),
                          size: 18.sp,
                        ),
                        SizedBox(width: 10.sp),
                        Text(
                          '6 applicants',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Applied: 2 days ago',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: orangeRed,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                width: MediaQuery.of(context).size.width,
                height: 350.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Description:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: Color(0xff333F52),
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            height: 38.h,
                            width: 350.w,
                            child: Text(
                              'Lorem ipsum dolor  amet, consectetur adipiscing elit. Et bibendum velit pharetra lorem',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Color(0xff7D808C),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                width: MediaQuery.of(context).size.width,
                height: 240.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Company',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: Color(0xff333F52),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                                  'Blue IT GmbH',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp,
                                    color: lightDark,
                                  ),
                                ),
                                Text(
                                  '1200 followers',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: lightDark,
                                  ),
                                ),
                                Text(
                                  '100 -150 employees',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: lightDark,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 77.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: orangeRed,
                              ),
                              child: Center(
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 314.w,
                      height: 54.h,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultricies arcu, at tincidunt massa. Condimentum sit sed faucibus egestas ut volutpat vitae sed.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: lightDark,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Show more',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                          color: orangeRed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
