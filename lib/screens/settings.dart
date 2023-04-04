import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/home_screen.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';
import 'commonscreens/faqscreen/faq_screen.dart';
import 'commonscreens/privacyscreen/privacy_screen.dart';
import 'companyscreens/Company_home.dart';
import 'companyscreens/subscriptions.dart';

int _groupValue = -1;

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.93,
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
                            'Settings',
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
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompanyHome(),
                              ),
                            );
                          },
                          child: Image(
                            image: AssetImage('assets/fb.png'),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: lightDark,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: 309.w,
                          height: 33.h,
                          child: Center(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna dui amet cursus interdum dui lectus.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: NineThree,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 19.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FaqScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 19.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Privacy',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 19.sp,
                          color: Color(0xff333F52),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SubscriptionScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70.h,
                        color: orangeRed,
                        child: Center(
                          child: Text(
                            'Subscriptions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 19.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Select account type',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 19.sp,
                        color: Color(0xff333F52),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _myRadioButton(
                          title: "Personal",
                          value: 0,
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                        ),
                        _myRadioButton(
                          title: "Business",
                          value: 1,
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
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

Widget _myRadioButton({String? title, int? value, dynamic? onChanged}) {
  return RadioListTile(
    activeColor: Color(0xff209289),
    contentPadding: EdgeInsets.symmetric(horizontal: 110, vertical: 0),
    value: value,
    groupValue: _groupValue,
    onChanged: onChanged,
    title: Text(title!),
  );
}
