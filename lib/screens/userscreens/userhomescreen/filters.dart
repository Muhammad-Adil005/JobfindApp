import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class filterScreen extends StatefulWidget {
  @override
  State<filterScreen> createState() => _filterScreenState();
}

class _filterScreenState extends State<filterScreen> {
  bool valuefirst = false;

  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 80.h,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Color(0xff2C3E50),
                    size: 20.sp,
                  ),
                  Text(
                    'Filters',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 19.sp,
                      color: Color(0xff333F52),
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 708.h,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date Posted',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: lightDark,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          shape: CircleBorder(),
                          checkColor: Color(0xff209289),
                          activeColor: Color(0xff209289),
                          value: this.valuefirst,
                          onChanged: (value) {
                            setState(
                              () {
                                this.valuefirst = value!;
                              },
                            );
                          },
                        ),
                        Text(
                          'All jobs',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: lightDark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
