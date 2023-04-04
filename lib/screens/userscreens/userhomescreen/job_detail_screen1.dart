import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class JobdetailScreen1 extends StatelessWidget {
  const JobdetailScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 343.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF3F3F3),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xffA3A3A3),
                        size: 25.sp,
                      ),
                      Text(
                        'Search candidates or companies',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff7F7F7F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 343.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF3F3F3),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffA3A3A3),
                        size: 25.sp,
                      ),
                      Text(
                        'Search by location, city or zipcode',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff7F7F7F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Clear',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        color: Color(0xffFF725E),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Your searches',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: NineThree,
                  ),
                ),
                SizedBox(height: 10.h),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Color(0xffA3A3A3),
                            size: 20.sp,
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Senior UI/UX designer',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: lightDark,
                                ),
                              ),
                              Text(
                                'Pakistan, Lahore',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  color: NineThree,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 15.h),
                Text(
                  'Try Searching for',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: NineThree,
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Container(
                      width: 174.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Center(
                        child: Text(
                          'Senior user experience designer',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 88.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Center(
                        child: Text(
                          'UI/UX designer',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      width: 130.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Center(
                        child: Text(
                          'User interface designer',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 116.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Center(
                        child: Text(
                          'Senior web designer',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      width: 131.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Center(
                        child: Text(
                          'User interface architect',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 140.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Center(
                        child: Text(
                          'User experience designer',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
