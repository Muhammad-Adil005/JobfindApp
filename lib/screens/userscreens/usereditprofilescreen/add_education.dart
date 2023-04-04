import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';
import '../generate_referral_code.dart';

class AddEducationScreen extends StatefulWidget {
  const AddEducationScreen({Key? key}) : super(key: key);

  @override
  State<AddEducationScreen> createState() => _AddEducationScreenState();
}

class _AddEducationScreenState extends State<AddEducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      'Add Education',
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
                SizedBox(height: 20.h),
                MyRow(text: 'School'),
                mytextfield(
                  hintText: 'GCU',
                ),
                MyRow(text: 'Degree'),
                mytextfield(
                  hintText: 'Bachelor',
                ),
                MyRow(text: 'field of study'),
                mytextfield(
                  hintText: 'Bio Tech',
                ),
                MyRow(text: 'Grade'),
                mytextfield(
                  hintText: 'Blue IT',
                ),
                MyRow(text: 'Start date'),
                mytextfield(
                  hintText: '00/00/0000',
                  sufixIcon: Icons.calendar_today_outlined,
                ),
                MyRow(text: 'End date'),
                mytextfield(
                  hintText: '00/00/0000',
                  sufixIcon: Icons.calendar_today_outlined,
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Color(0xff209289), width: 1)
                          //color: Color(0xff209289),
                          ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Currently in progress',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff3E3E3E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                MyRow(text: 'Description'),
                SizedBox(height: 10.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  width: 343.w,
                  height: 86.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: Color(0xff209289),
                    ),
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac viverra.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CommonButton(
                  buttonColor: Color(0xFFFF725E),
                  text: "Save",
                  textColor: white,
                  borderSide: BorderSide.none,
                  buttonShadowColor: white,
                  onPressed: () {},
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
