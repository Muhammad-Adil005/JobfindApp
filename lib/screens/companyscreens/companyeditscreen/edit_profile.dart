import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';

class EditCompanyProfileScreen extends StatefulWidget {
  const EditCompanyProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditCompanyProfileScreen> createState() =>
      _EditCompanyProfileScreenState();
}

class _EditCompanyProfileScreenState extends State<EditCompanyProfileScreen> {
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
                      'Edit profile',
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
                MyRow(text: 'Frst Name'),
                mytextfield(
                  hintText: 'Farwa',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Last Name'),
                mytextfield(
                  hintText: 'Farwa',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Headline'),
                mytextfield(
                  hintText: 'Farwa',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'About'),
                mytextfield(
                  hintText: 'Farwa',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Add native language'),
                mytextfield(
                  hintText: 'English',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Add other languages'),
                mytextfield(
                  hintText: 'English',
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add more',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: Color(0xff219289),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Colors.blue.shade100,
                      ),
                      child: Center(
                        child: Text(
                          'English',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 50.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Colors.blue.shade100,
                      ),
                      child: Center(
                        child: Text(
                          'English',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                MyRow(text: 'Add Skills'),
                mytextfield(
                  hintText: 'Python',
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add more',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: Color(0xff219289),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Colors.blue.shade100,
                      ),
                      child: Center(
                        child: Text(
                          'Java',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: lightDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
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
