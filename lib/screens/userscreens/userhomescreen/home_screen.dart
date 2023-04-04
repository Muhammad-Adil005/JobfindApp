import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/about.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/companies.dart';

import '../../../constants/constants.dart';
import '../usereditprofilescreen/edit_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150.h,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/pc.png'),
                    ),
                  ),
                  Positioned.fill(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff209289),
                            ),
                            child: Icon(Icons.edit,
                                size: 20.sp, color: Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff209289),
                            ),
                            child: Icon(Icons.notifications_none,
                                size: 20.sp, color: Colors.white),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/fb.png'),
                      ),
                    ],
                  )),
                ],
              ),
              Container(
                width: 375.w,
                height: 178.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'User name here',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: lightDark,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: 309.w,
                      height: 33.h,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna dui amet cursus interdum dui lectus.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Color(0xff939393),
                              ),
                            ),
                            Text(
                              '10k',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Following',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Color(0xff939393),
                              ),
                            ),
                            Text(
                              '120',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Points',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Color(0xff939393),
                              ),
                            ),
                            Text(
                              '80',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 343.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xffFF725E),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit, color: Colors.white, size: 20.sp),
                      SizedBox(width: 5.w),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              About(),
              Companies(),
            ],
          ),
        ),
      ),
    );
  }
}
