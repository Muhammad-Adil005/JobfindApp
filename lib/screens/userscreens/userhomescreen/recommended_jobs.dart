import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';
import '../../companyscreens/companyhomescreen/company_home_screen.dart';
import '../../notification_screen.dart';
import 'job_detail_screen4.dart';

class RecommendedJobScreen extends StatelessWidget {
  const RecommendedJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 20.w),
                height: 90.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10.w),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 19.sp,
                        color: Color(0xff333F52),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff209289),
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 663.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Text(
                        'Recommended Jobs',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: lightDark,
                        ),
                      ),
                    ),
                    MyContainer(),
                    SizedBox(height: 10.h),
                    MyContainer(),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xffF4F4F4),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                            color: Color(0xffFF725E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 315.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Text(
                        'Suggested Companies',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: lightDark,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompanyHomeScreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 250.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 20.w),
                              child: Container(
                                width: 144.w,
                                height: 180.h,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.h),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage('assets/oval.png'),
                                      ),
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
                                        '120k followers',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: lightDark,
                                        ),
                                      ),
                                      Container(
                                        width: 80.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Color(0xffFF725E),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Follow',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
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

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JobdetailScreen4(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
          width: 341.w,
          height: 270.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(1, 1),
              ),
            ],
          ), // changes position of shadow
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Senior Python Developer',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff74BBB5),
                        size: 20.sp,
                      ),
                      Text(
                        'Berlin',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          fontStyle: FontStyle.italic,
                          color: lightgrey,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.star_border,
                        color: Color(0xff74BBB5),
                        size: 20.sp,
                      ),
                      Text(
                        '5 years',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          fontStyle: FontStyle.italic,
                          color: lightgrey,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.person_outline,
                        color: Color(0xff74BBB5),
                        size: 20.sp,
                      ),
                      Text(
                        'Remote Job',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          fontStyle: FontStyle.italic,
                          color: lightgrey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 317.w,
                    height: 72.h,
                    child: Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: lightgrey,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(112),
                          color: Color(0xffD5EAE9),
                        ),
                        child: Center(
                          child: Text(
                            'HTML',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 40.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(112),
                          color: Color(0xffD5EAE9),
                        ),
                        child: Center(
                          child: Text(
                            'CSS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 40.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(112),
                          color: Color(0xffD5EAE9),
                        ),
                        child: Center(
                          child: Text(
                            'React',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 50.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(112),
                          color: Color(0xffD5EAE9),
                        ),
                        child: Center(
                          child: Text(
                            '+4 more',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Published on: 15 Sep 2020',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: Color(0xffFF725E),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_rounded,
                        color: Color(0xff14645E),
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Color(0xff14645E),
                        size: 20.sp,
                      ),
                      SizedBox(width: 250.w),
                      Icon(
                        CupertinoIcons.bookmark,
                        color: Color(0xff939393),
                        size: 20.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
