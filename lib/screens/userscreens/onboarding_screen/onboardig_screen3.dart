import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/userscreens/login_screen.dart';
import 'package:jobfindapp/screens/userscreens/signup_screen.dart';
import '../../../constants/constants.dart';
import '../../../reusable_widgets/common_button.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 40.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/Resume.png'),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Easy use on your poket',
                      style: TextStyle(
                        color: subAndTitleColorOnboarding,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 320.w,
                        child: Text(
                          'Get job recommendation, search and save job opportunity in your gadget',
                          style: TextStyle(
                            color: subAndTitleColorOnboarding,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CommonButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  buttonColor: orangeRed,
                  borderSide: BorderSide.none,
                  textColor: white,
                  text: 'Get Start',
                  buttonShadowColor: grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
