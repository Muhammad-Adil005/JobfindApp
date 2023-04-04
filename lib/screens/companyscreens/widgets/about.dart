import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/constants.dart';

class AboutCandidate extends StatefulWidget {
  const AboutCandidate({Key? key}) : super(key: key);

  @override
  State<AboutCandidate> createState() => _AboutCandidateState();
}

class _AboutCandidateState extends State<AboutCandidate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 880.h,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: lightDark,
              ),
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 314.w,
                height: 126.h,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultricies arcu, at tincidunt massa. Condimentum sit sed faucibus egestas ut volutpat vitae sed ullamcorper. Vel consequat a hendrerit viverra mi massa elementum feugiat eget. Velit id fusce arcu tellus pellentesque lorem fermentum. Diam massa pellentesque congue in. Aliquam est.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: lightDark,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Experience',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: lightDark,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('assets/NBC.png'),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Software Engineer',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                                color: lightDark,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Power SOft19',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: lightDark,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'April 2021 - May 2021 - 2 months',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: lightDark,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Lahore , Punjab',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: lightDark,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                'View all',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: Color(0xffFF725E),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Education',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: lightDark,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/college.png'),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Givernment College University, Lahore',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'BS Computer Science',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      '2015 - 2019',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Skills',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: lightDark,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Container(
                  width: 86.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(112),
                    color: Colors.blue.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      'Deep Learning',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Container(
                  width: 86.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(112),
                    color: Colors.blue.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      'Machine Learning',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Container(
                  width: 86.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(112),
                    color: Colors.blue.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      'Computer Vision',
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
            SizedBox(height: 10.h),
            Container(
              width: 86.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(112),
                color: Colors.blue.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  'Java Script',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Languages',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: lightDark,
              ),
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Text(
                  'English',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    color: lightDark,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Native',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xff7D7D7E),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Text(
                  'Urdu',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    color: lightDark,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Native',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xff7D7D7E),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
