import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';
import 'buy_coins.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.h, horizontal: 20.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back, size: 25.sp),
                          Text(
                            'Subscriptions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 19.sp,
                              color: Color(0xff333F52),
                            ),
                          ),
                          Stack(
                            children: [
                              Icon(Icons.notifications_none, size: 25.sp),
                              Positioned(
                                left: 12.w,
                                top: 6.h,
                                child: Container(
                                  height: 8.h,
                                  width: 8.w,
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
                    ),
                    Image(
                      image: AssetImage('assets/coins.png'),
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      children: [
                        Text(
                          'Top Up your  COINS',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            color: Color(0xff209289),
                          ),
                        ),
                        Text(
                          'with our',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            color: Color(0xff209289),
                          ),
                        ),
                        Text(
                          'SUBSCRIPTION',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            color: orangeRed,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      width: 335.w,
                      height: 88.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gold',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                              color: Color(0xff209289),
                            ),
                          ),
                          Image(
                            color: Color(0xff209289),
                            image: AssetImage('assets/2.png'),
                          ),
                          Text(
                            '100 points',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                              color: lightDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      width: 335.w,
                      height: 88.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffFFE6D9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Plus',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                              color: Color(0xff209289),
                            ),
                          ),
                          Image(
                            color: Colors.pink.shade100,
                            image: AssetImage('assets/8.png'),
                          ),
                          Text(
                            '500 points',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                              color: lightDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      width: 335.w,
                      height: 88.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffD5EAE9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Basic',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                              color: Color(0xff209289),
                            ),
                          ),
                          Image(
                            color: Color(0xff209289),
                            image: AssetImage('assets/12.png'),
                          ),
                          Text(
                            '100 points',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                              color: lightDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                    CommonButton(
                      buttonColor: Color(0xFFFF725E),
                      text: "Buy Coins",
                      textColor: white,
                      borderSide: BorderSide.none,
                      buttonShadowColor: white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BuyCoinScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 40.h),
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
