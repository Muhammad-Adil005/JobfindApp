import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';
import '../candidate_screen.dart';

class CompanyHomePage extends StatelessWidget {
  const CompanyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min, //Add this
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.h, left: 10.w, right: 20.w),
                height: 200.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        Stack(
                          children: [
                            Container(
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
                            Positioned(
                              left: 15.w,
                              top: 10.h,
                              child: Container(
                                width: 8.w,
                                height: 8.h,
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
                    Container(
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
                    Container(
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
                              Icons.location_on_outlined,
                              color: Color(0xffA3A3A3),
                              size: 25.sp,
                            ),
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
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 370.h,
                color: Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Candidates that follows you',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CandidateScreen(),
                            ),
                          );
                        },
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/MenTwoCar.png'),
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
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              '5 Years',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Color(0xff7D7D7E),
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
                                                BorderRadius.circular(12),
                                            color: Color(0xffFF725E),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'View Profile',
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
                                ],
                              ),
                              SizedBox(width: 40.w),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                              image: AssetImage('assets/MenTwoCar.png'),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            '5 Years',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: Color(0xff7D7D7E),
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
                                              BorderRadius.circular(12),
                                          color: Color(0xffFF725E),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'View Profile',
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
                              ],
                            ),
                            SizedBox(width: 40.w),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Text(
                          'Active Jobs',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          primary: false,
                          // reverse: true,
                          physics: ScrollPhysics(),
                          //physics: NeverScrollableScrollPhysics(),
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
          height: 260.h,
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
                      SizedBox(width: 120.w),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.thumb_up,
                                color: Color(0xff14645E),
                                size: 20.sp,
                              ),
                              Text(
                                '150',
                                style: TextStyle(
                                  color: Color(0xffFF725E),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            children: [
                              Icon(
                                Icons.thumb_down_alt_outlined,
                                color: Color(0xff14645E),
                                size: 20.sp,
                              ),
                              Text(
                                '300',
                                style: TextStyle(
                                  color: Color(0xffFF725E),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
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
