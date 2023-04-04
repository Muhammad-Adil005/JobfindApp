import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class ApplicantJobs extends StatefulWidget {
  const ApplicantJobs({Key? key}) : super(key: key);

  @override
  State<ApplicantJobs> createState() => _ApplicantJobsState();
}

class _ApplicantJobsState extends State<ApplicantJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 280.h,
                color: Colors.white,
                child: MyContainer(),
              ),
              SizedBox(height: 10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2100.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        'Applicants of the Job',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xff3E3E3E),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Container(
                        width: 343.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF3F3F3),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Icon(
                                Icons.search,
                                color: Color(0xffA3A3A3),
                                size: 25.sp,
                              ),
                            ),
                            Text(
                              'Search by experience, name or skill',
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
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView.builder(
                            primary: false,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Container(
                                  width: 341.w,
                                  height: 152.h,
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
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/MenTwoCar.png'),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 15.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Marvin McKinney',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                                Text(
                                                  'Front End Developer',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    color: Color(0xffFF725E),
                                                  ),
                                                ),
                                                SizedBox(height: 8.h),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Experience:',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12.sp,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5.w),
                                                    Text(
                                                      '5 Years',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff7D7D7E),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20.h),
                                                Container(
                                                  width: 86.w,
                                                  height: 39.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0xffFF725E),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'View Profile',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12.sp,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 40.w),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
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
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
          width: MediaQuery.of(context).size.width,
          height: 270.h,
          // changes position of shadow
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                      SizedBox(width: 107.w),
                      Row(
                        children: [
                          Container(
                            width: 26.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff209289),
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 15.sp,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Container(
                            width: 26.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff209289),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                  Positioned(
                                    left: 10.w,
                                    top: 5.h,
                                    child: Container(
                                      width: 7.w,
                                      height: 7.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFF0000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Published on: 15 Sep 2020',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: Color(0xffFF725E),
                        ),
                      ),
                      SizedBox(width: 80.w),
                      Text(
                        '\$20k - \$30k | Surat',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xff757575),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'View detail',
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
      ),
    );
  }
}
