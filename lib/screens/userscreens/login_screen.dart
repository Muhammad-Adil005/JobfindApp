import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/screens/userscreens/signup_screen.dart';

import '../../bottomNavigationBar/UserBottomNavigationBar.dart';
import '../../reusable_widgets/common_button.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 10.h),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w600,
                              color: subAndTitleColorOnboarding,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      MyTextField(
                        hintText: 'Enter your mail id',
                        prefixIcon: Icons.email_outlined,
                      ),
                      SizedBox(height: 20.h),
                      MyTextField(
                        hintText: 'password',
                        prefixIcon: Icons.lock_outline,
                        sufixIcon: Icons.remove_red_eye_outlined,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: orangeRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CommonButton(
                        buttonColor: Color(0xFFFF725E),
                        text: "Login",
                        textColor: white,
                        borderSide: BorderSide.none,
                        buttonShadowColor: white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserbottomNavigationBar(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: 343.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: orangeRed.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                              color: orangeRed,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'sign up ',
                              style: TextStyle(
                                  color: Color(0xFFFF725E),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    this.hintText,
    this.prefixIcon,
    this.sufixIcon,
  });

  final String? hintText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon, color: IconColor),
        suffixIcon: Icon(sufixIcon, color: IconColor),
      ),
    );
  }
}

// class TextForm extends StatelessWidget {
//   const TextForm({
//     Key? key,
//     required this.labelText,
//     this.iconData,
//     this.suffixIcon,
//     required this.obscureText,
//     required this.keyBoardType,
//     required this.onIconTap,
//   }) : super(key: key);
//
//   final String labelText;
//   final IconData? iconData;
//   final IconData? suffixIcon;
//   final bool obscureText;
//   final TextInputType keyBoardType;
//   final Function onIconTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: obscureText,
//       cursorHeight: 21,
//       keyboardType: keyBoardType,
//       style: TextStyle(
//         fontSize: 15.0,
//         fontWeight: FontWeight.w400,
//       ),
//       decoration: InputDecoration(
//         border: UnderlineInputBorder(),
//         labelText: labelText,
//         labelStyle: TextStyle(
//           fontSize: 15.0,
//           fontWeight: FontWeight.w400,
//         ),
//         prefixIcon: Icon(
//           iconData,
//           size: 30.0,
//         ),
//         suffixIcon: IconButton(
//           icon: Icon(
//             suffixIcon,
//             size: 30.0,
//           ),
//           onPressed: () {
//             onIconTap();
//           },
//         ),
//       ),
//     );
//   }
// }
