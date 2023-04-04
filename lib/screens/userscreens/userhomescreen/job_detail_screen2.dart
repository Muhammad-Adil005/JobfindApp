import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class JobdetailScreen2 extends StatelessWidget {
  const JobdetailScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90.h,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: AssetImage('assets/menu.png'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      width: 56.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: orangeRed,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Jobs',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      width: 78.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: orangeRed,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Job Type',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      width: 76.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        border: Border.all(color: orangeRed, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Distance',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: orangeRed,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: orangeRed,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        border: Border.all(color: orangeRed, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Experience level',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: orangeRed,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: orangeRed,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.only(top: 20.h),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return MyContainer();
                  },
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
      child: Padding(
        padding: EdgeInsets.only(top: 15.h),
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
                blurRadius: 1,
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
                        color: Color(0xff939393),
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Color(0xff939393),
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
