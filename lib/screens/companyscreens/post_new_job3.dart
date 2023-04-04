import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfindapp/screens/companyscreens/post_new_job4.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';

class PostNewJob3 extends StatefulWidget {
  const PostNewJob3({Key? key}) : super(key: key);

  @override
  State<PostNewJob3> createState() => _PostNewJob3State();
}

class _PostNewJob3State extends State<PostNewJob3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      'Post New job',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        color: subAndTitleColorOnboarding,
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
                Text(
                  'Interview information',
                  style: Fivehundred20,
                ),
                SizedBox(height: 20.h),
                MyRow(text: 'Company name'),
                mytextfield(
                  hintText: 'UI/UX Designer ',
                ),
                MyRow(text: 'Recruiter name'),
                mytextfield(
                  hintText: 'UI/UX Designer ',
                ),
                MyRow(text: 'Contact no.'),
                mytextfield(
                  hintText: '00000000',
                ),
                MyRow(text: 'Contact mail'),
                mytextfield(
                  hintText: 'abx@gmail.com',
                ),
                MyRow(text: 'Choose country'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.keyboard_arrow_down_rounded,
                ),
                MyRow(text: 'Choose state'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.keyboard_arrow_down_rounded,
                ),
                MyRow(text: 'Choose city'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.keyboard_arrow_down_rounded,
                ),
                MyRow(text: 'Street address'),
                mytextfield(
                  hintText: 'Blue IT',
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 132.w,
                      height: 43.h,
                      decoration: BoxDecoration(
                        // color: Color(0xffFF725E),
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffFF725E),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: Color(0xffFF725E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostNewJob4(),
                          ),
                        );
                      },
                      child: Container(
                        width: 132.w,
                        height: 43.h,
                        decoration: BoxDecoration(
                          color: Color(0xffFF725E),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Text(
                            'Continue Process',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mytextfield extends StatelessWidget {
  mytextfield({this.hintText, this.sufixIcon});

  final String? hintText;
  final IconData? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 15.sp,
            color: black,
          ),
          suffixIcon: Icon(sufixIcon, color: Color(0xff209289), size: 20.sp),
          fillColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xff209289),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xff209289),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xff209289),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  MyRow({this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200.w,
          height: 21.h,
          child: Text(
            text!,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Color(0xff333F52),
            ),
          ),
        ),
      ],
    );
  }
}
