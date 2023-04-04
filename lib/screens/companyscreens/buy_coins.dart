import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfindapp/screens/companyscreens/payment_details.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';

class BuyCoinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 826.h,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.93,
                color: Colors.white,
                child: Column(
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
                            'Buy Coins',
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
                    SizedBox(height: 60.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          Text(
                            'Add coins',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xff333F52),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 343,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xff209289),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('200'),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 7.h,
                                child: Icon(
                                  Icons.arrow_drop_up,
                                  color: Color(0xff209289),
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: Color(0xff209289),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    CommonButton(
                      buttonColor: Color(0xFFFF725E),
                      text: "Pay \$4",
                      textColor: white,
                      borderSide: BorderSide.none,
                      buttonShadowColor: white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
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
      ),
    );
  }
}
