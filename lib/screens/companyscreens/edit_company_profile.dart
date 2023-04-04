import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';
import 'companyeditscreen/add_location.dart';

class EditCompanyProfile extends StatefulWidget {
  const EditCompanyProfile({Key? key}) : super(key: key);

  @override
  State<EditCompanyProfile> createState() => _EditCompanyProfileState();
}

class _EditCompanyProfileState extends State<EditCompanyProfile> {
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
                Text(
                  'Primary Info',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: lightDark,
                  ),
                ),
                SizedBox(height: 20.h),
                MyRow(text: 'Name'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Tagline'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Industry'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Website URL'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Company Size'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Company type'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Phone'),
                mytextfield(
                  hintText: 'Blue IT',
                  sufixIcon: Icons.edit,
                ),
                MyRow(text: 'Year founded'),
                mytextfield(
                  hintText: 'Blue IT',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddLocationScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 20.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff209289),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10995 Le Conte Ave, Los Angeles, California, USA',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      color: Color(0xff26958B),
                      size: 20.sp,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Container(
                  width: 96.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(112),
                    color: Colors.blue.shade100,
                  ),
                  child: Center(
                    child: Text(
                      'Primary location',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
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
                          'Cancel',
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
                    Container(
                      width: 132.w,
                      height: 43.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFF725E),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        child: Text(
                          'Save Changes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: white,
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
