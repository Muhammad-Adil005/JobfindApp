import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';

class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({Key? key}) : super(key: key);

  @override
  State<AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
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
                      'Add location',
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
                MyRow(text: 'Choose country'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.keyboard_arrow_down_outlined,
                ),
                MyRow(text: 'Choose state'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.keyboard_arrow_down_outlined,
                ),
                MyRow(text: 'Choose city'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.keyboard_arrow_down_outlined,
                ),
                MyRow(text: 'Street address'),
                mytextfield(
                  hintText: 'Blue IT',
                ),
                MyRow(text: 'ZIP/Postal code'),
                mytextfield(
                  hintText: 'Blue IT',
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
                      'Make this my primary location',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff3E3E3E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
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
