import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/constants.dart';

class Companies extends StatelessWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 338.h,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Companies Interested in',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: lightDark,
              ),
            ),
            SizedBox(height: 20.h),
            MyCompany(
              text1: 'NBC',
              text2: '120k followers',
              image: 'assets/nbccompany.png',
            ),
            SizedBox(height: 10.h),
            MyCompany(
              text1: 'Blue IT GmbH',
              text2: '120k followers',
              image: 'assets/BlueIT.png',
            ),
            SizedBox(height: 10.h),
            MyCompany(
              text1: 'See Biz pvt Ltd',
              text2: '120k followers',
              image: 'assets/SeeBiz.png',
            ),
            SizedBox(height: 10.h),
            MyCompany(
              text1: 'NetSol Technologies',
              text2: '120k followers',
              image: 'assets/Netsol.png',
            ),
          ],
        ),
      ),
    );
  }
}

class MyCompany extends StatelessWidget {
  MyCompany({this.text1, this.text2, this.image});
  final String? text1;
  final String? text2;
  final dynamic? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text1!,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
                color: lightDark,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              text2!,
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
    );
  }
}
