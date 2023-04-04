import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/companyscreens/post_new_job3.dart';

import '../../constants/constants.dart';

class PostNewJob2 extends StatefulWidget {
  const PostNewJob2({Key? key}) : super(key: key);

  @override
  State<PostNewJob2> createState() => _PostNewJob2State();
}

class _PostNewJob2State extends State<PostNewJob2> {
  int _radioValue1 = -1;

  void _handleRadioValueChange1(int? value) {
    setState(
      () {
        _radioValue1 = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // String gender = "male";
    String? gender;
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
                  'Candidate requirments',
                  style: Fivehundred20,
                ),
                Container(
                  width: 299.w,
                  height: 40.h,
                  child: Text(
                    'Do you have any job specific requirmnets? if yes please select below',
                    style: Threehundred13,
                  ),
                ),
                Text(
                  'Working days',
                  style: Fivehundred15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RowContainer(
                      text: 'Sun',
                    ),
                    RowContainer(
                      text: 'Mon',
                    ),
                    RowContainer(
                      text: 'Tue',
                    ),
                    RowContainer(
                      text: 'Wed',
                    ),
                    RowContainer(
                      text: 'Thur',
                    ),
                    RowContainer(
                      text: 'Fri',
                    ),
                    Container(
                      width: 45.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xff209289),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sat',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Work timings',
                  style: Fivehundred15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Time',
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '09:30 AM',
                                    style: Fivehundred16,
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'To',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: Color(0xff7C7B7B),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Time',
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '09:30 AM',
                                    style: Fivehundred16,
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Experiance required',
                  style: Fivehundred15,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  width: 343.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xff209289),
                    ),
                  ),
                  child: Text(
                    '0-3 years',
                    style: Fivehundred15,
                  ),
                ),
                Text(
                  'Gender',
                  style: Fivehundred15,
                ),
                Row(
                  children: [
                    Radio(
                      activeColor: Color(0xff209289),
                      //fillColor: Color(0xff209289),
                      value: 0,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(fontSize: 12),
                    ),
                    Radio(
                      activeColor: Color(0xff209289),
                      value: 1,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    Text(
                      'Female',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Radio(
                      activeColor: Color(0xff209289),
                      value: 2,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    Text(
                      'Both',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  'launguage known',
                  style: Fivehundred15,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  width: 343.w,
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
                      Text(
                        'English',
                        style: Fivehundred15,
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: Color(0xffFF725E),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: Color(0xffFF725E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostNewJob3(),
                          ),
                        );
                      },
                      child: Container(
                        width: 147.w,
                        height: 43.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Color(0xffFF725E),
                        ),
                        child: Center(
                          child: Text(
                            'Continue Process',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowContainer extends StatelessWidget {
  RowContainer({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff209289),
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
