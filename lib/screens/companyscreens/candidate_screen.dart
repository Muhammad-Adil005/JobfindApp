import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/companyscreens/widgets/about.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/about.dart';
import 'package:jobfindapp/screens/userscreens/userhomescreen/widgets/companies.dart';

import '../../../constants/constants.dart';
import '../onetoonechat_screen.dart';

class CandidateScreen extends StatefulWidget {
  const CandidateScreen({Key? key}) : super(key: key);

  @override
  State<CandidateScreen> createState() => _CandidateScreenState();
}

class _CandidateScreenState extends State<CandidateScreen> {
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
                height: 220.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Candidate name here',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OneToOneChatScreen(),
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
                                'Message',
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
                              'Download CV',
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
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              AboutCandidate(),
            ],
          ),
        ),
      ),
    );
  }
}
