import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/about.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/companies.dart';

import '../../../constants/constants.dart';
import 'Company_jobs.dart';

class CompanyHomeScreen extends StatefulWidget {
  const CompanyHomeScreen({Key? key}) : super(key: key);

  @override
  State<CompanyHomeScreen> createState() => _CompanyHomeScreenState();
}

class _CompanyHomeScreenState extends State<CompanyHomeScreen> {
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff209289),
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Icon(Icons.notifications_none,
                                      size: 20.sp, color: Colors.white),
                                ),
                                Positioned(
                                  left: 20.w,
                                  top: 10.h,
                                  child: Container(
                                    height: 7.h,
                                    width: 7.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: orangeRed,
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                height: 300.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Company name here',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: lightDark,
                      ),
                    ),
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
                              'Employees',
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompanyJobsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 106.w,
                            height: 43.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: orangeRed),
                            ),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.sp,
                                  color: orangeRed,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Container(
                          width: 106.w,
                          height: 43.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: orangeRed,
                          ),
                          child: Center(
                            child: Text(
                              'Visit Website',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: orangeRed,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 1,
                          height: 15.h,
                          color: NineThree,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Jobs',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: NineThree,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                height: 480.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Container(
                      width: 314.w,
                      height: 130.h,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultricies arcu, at tincidunt massa. Condimentum sit sed faucibus egestas ut volutpat vitae sed ullamcorper. Vel consequat a hendrerit viverra mi massa elementum feugiat eget. Velit id fusce arcu tellus pellentesque lorem fermentum. Diam massa pellentesque congue in. Aliquam est.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: lightDark,
                        ),
                      ),
                    ),
                    Text(
                      'Website',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Text(
                      'www.figma.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Color(0xff007FF4),
                      ),
                    ),
                    Text(
                      'Company Size',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Text(
                      '1-200 employees',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: NineThree,
                      ),
                    ),
                    Text(
                      'Headquarters',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Text(
                      'LA, USA',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: NineThree,
                      ),
                    ),
                    Text(
                      'Founded',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Text(
                      '2019',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: NineThree,
                      ),
                    ),
                    Text(
                      'Specialities',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Text(
                      'Front end, UI/UX, Marketing',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: NineThree,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                width: MediaQuery.of(context).size.width,
                height: 113.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: lightDark,
                      ),
                    ),
                    Text(
                      '10995 Le Conte Ave, Los Angeles, California, USA',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: NineThree,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 96.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(112),
                        color: Colors.blue.withOpacity(0.1),
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
