import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/companyscreens/post_new_job2.dart';

import '../../constants/constants.dart';
import '../../reusable_widgets/common_button.dart';

class PostNewJob1 extends StatefulWidget {
  const PostNewJob1({Key? key}) : super(key: key);

  @override
  State<PostNewJob1> createState() => _PostNewJob1State();
}

class _PostNewJob1State extends State<PostNewJob1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 1000.h,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      'Post New job',
                      style: Fivehundred19,
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
                Text(
                  'Basic Details',
                  style: Fivehundred20,
                ),
                Text(
                  'Job role',
                  style: Fivehundred14,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  width: 343.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xff209289), width: 1),
                  ),
                  child: Text(
                    'UI/UX Designer ',
                    style: Fivehundred15,
                  ),
                ),
                Text(
                  'Job type',
                  style: Fivehundred14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff209289), width: 1),
                      ),
                      child: Center(
                        child: Text(
                          'Full-time',
                          style: Fourhundred13,
                        ),
                      ),
                    ),
                    Container(
                      width: 93.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff209289),
                      ),
                      child: Center(
                        child: Text(
                          'Part-time',
                          style: Whitehundred13,
                        ),
                      ),
                    ),
                    Container(
                      width: 146.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff209289), width: 1),
                      ),
                      child: Center(
                        child: Text(
                          'Work from home',
                          style: Fourhundred13,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 172.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xff209289), width: 1),
                  ),
                  child: Center(
                    child: Text(
                      'This is a nighte shift',
                      style: Fourhundred13,
                    ),
                  ),
                ),
                Text(
                  'Description',
                  style: Fivehundred14,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  width: 343.w,
                  height: 86.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xff209289), width: 1),
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac viverra.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Min salary',
                          style: Fivehundred14,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 155.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xff209289),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Min. salary/month',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                    color: Color(0xffC7C7C7),
                                  ),
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
                          'Max salary',
                          style: Fivehundred14,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 155.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xff209289),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Min. salary/month',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                    color: Color(0xffC7C7C7),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
                          'No of opening',
                          style: Fivehundred14,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 104.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xff209289),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.keyboard_arrow_down_outlined),
                                  ],
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
                          'Min education',
                          style: Fivehundred14,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 216.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xff209289),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Minimum sducation',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp,
                                      color: Color(0xffC7C7C7),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                CommonButton(
                  buttonColor: Color(0xFFFF725E),
                  text: "Continue",
                  textColor: white,
                  borderSide: BorderSide.none,
                  buttonShadowColor: white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostNewJob2(),
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
