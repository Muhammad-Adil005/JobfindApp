import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/about.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/companies.dart';

import '../../../constants/constants.dart';

class CompanyJobsScreen extends StatefulWidget {
  const CompanyJobsScreen({Key? key}) : super(key: key);

  @override
  State<CompanyJobsScreen> createState() => _CompanyJobsScreenState();
}

class _CompanyJobsScreenState extends State<CompanyJobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150.h,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/pc.png'),
                    ),
                  ),
                  Positioned.fill(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff209289),
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Icon(Icons.notifications_none,
                                      size: 20.sp, color: Colors.white),
                                ),
                                Positioned(
                                  left: 20.w,
                                  top: 10.h,
                                  child: Container(
                                    height: 7.h,
                                    width: 7.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: orangeRed,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/fb.png'),
                      ),
                    ],
                  )),
                ],
              ),
              Container(
                width: 375.w,
                height: 300.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Company name here',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: lightDark,
                      ),
                    ),
                    Container(
                      width: 309.w,
                      height: 33.h,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna dui amet cursus interdum dui lectus.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Color(0xff939393),
                              ),
                            ),
                            Text(
                              '10k',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Employees',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Color(0xff939393),
                              ),
                            ),
                            Text(
                              '120',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colors.black,
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
                          width: 106.w,
                          height: 43.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: orangeRed),
                          ),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: orangeRed,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Container(
                          width: 106.w,
                          height: 43.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: orangeRed,
                          ),
                          child: Center(
                            child: Text(
                              'Visit Website',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: orangeRed,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 1,
                          height: 15.h,
                          color: NineThree,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Jobs',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: NineThree,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return MyContainer();
                    },
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

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Center(
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
