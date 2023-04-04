import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';
import '../generate_referral_code.dart';
import 'add_experience.dart';
import 'edit_experience1.dart';

class EditExperienceScreen2 extends StatefulWidget {
  const EditExperienceScreen2({Key? key}) : super(key: key);

  @override
  State<EditExperienceScreen2> createState() => _EditExperienceScreen2State();
}

class _EditExperienceScreen2State extends State<EditExperienceScreen2> {
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
                      'Edit Experience',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        color: subAndTitleColorOnboarding,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddExperienceScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff209289),
                        ),
                        child: Center(
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('assets/NBC.png'),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Software Engineer',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp,
                                    color: lightDark,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Power SOft19',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: lightDark,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'April 2021 - May 2021 - 2 months',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp,
                                    color: lightDark,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Lahore , Punjab',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp,
                                    color: lightDark,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EditExperienceScreen1()),
                            );
                          },
                          child: Icon(
                            Icons.edit,
                            color: Color(0xff26958B),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
