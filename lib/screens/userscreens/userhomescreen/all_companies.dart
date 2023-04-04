import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class AllCompaniesScreen extends StatelessWidget {
  const AllCompaniesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    'All Companies',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 19.sp,
                      color: Color(0xff333F52),
                    ),
                  ),
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
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 375.w,
              height: 662.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/nbccompany.png'),
                                  ),
                                  SizedBox(width: 8.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'NBC',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp,
                                          color: lightDark,
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        '120k followers',
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
                              Container(
                                width: 68.w,
                                height: 43.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffFF725E),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'View',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp,
                                      color: Color(0xffFF725E),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
