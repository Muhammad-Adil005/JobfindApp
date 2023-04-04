import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';
import '../../reusable_widgets/common_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 844.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      'Payment Details',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 19.sp,
                        color: TripleThree,
                      ),
                    ),
                    Stack(
                      children: [
                        Icon(Icons.notifications_none),
                        Positioned(
                          left: 12.w,
                          top: 7.h,
                          child: Container(
                            height: 10.h,
                            width: 10.w,
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
                Text(
                  'Total price',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: lightDark,
                  ),
                ),
                Image(
                  image: AssetImage('assets/4.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment method',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: lightDark,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 107.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xff209289),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Credit',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 20.sp,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 107.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xffECECEC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Google \n Pay',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                  color: Color(0xff7C7C7C),
                                ),
                              ),
                              Icon(
                                Icons.access_time,
                                color: Color(0xff7C7C7C),
                                size: 20.sp,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 107.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xffECECEC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Apple \n Pay',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                  color: Color(0xff7C7C7C),
                                ),
                              ),
                              Icon(
                                Icons.access_time,
                                color: Color(0xff7C7C7C),
                                size: 20.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Number',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: lightDark,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 343.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xff209289),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        '000 0000 0000 0000',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Valid until',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: lightDark,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          width: 150.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xff209289),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            'jan/2023',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: lightDark,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          width: 150.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xff209289),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            '***',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card holder',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: lightDark,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      width: 343.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xff209289),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                CommonButton(
                  buttonColor: Color(0xFFFF725E),
                  text: "Make Payment",
                  textColor: white,
                  borderSide: BorderSide.none,
                  buttonShadowColor: white,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        //  title: Text("Application Success"),
                        //content:
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(CupertinoIcons.clear, size: 20.sp),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Divider(
                                color: Color(0xffE8E8E8),
                                thickness: 1,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Successful Payment',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  color: lightDark,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                width: 230.w,
                                height: 40.h,
                                child: Center(
                                  child: Text(
                                    'Your order no is XXXXXXX. You will receive the alert once out for delivery',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding: EdgeInsets.all(0),
                                      //  title: Text("Application Success"),
                                      //content:
                                      actions: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(CupertinoIcons.clear,
                                                    size: 20.sp),
                                              ],
                                            ),
                                            SizedBox(height: 5.h),
                                            Divider(
                                              color: Color(0xffE8E8E8),
                                              thickness: 1,
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              'Unsuccessful Payment',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15.sp,
                                                color: lightDark,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Container(
                                              width: 170.w,
                                              height: 40.h,
                                              child: Center(
                                                child: Text(
                                                  'Payment is not successful Please try again.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 20.h),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 45.h,
                                              color: orangeRed,
                                              child: Center(
                                                child: Text(
                                                  'Go Back',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
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
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 45.h,
                                  color: orangeRed,
                                  child: Center(
                                    child: Text(
                                      'Continue Buy Coins',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
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
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
