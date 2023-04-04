import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/screens/userscreens/login_screen.dart';

import '../../reusable_widgets/common_button.dart';
import 'generate_referral_code.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                            "Sign Up",
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
                        hintText: 'Full name ',
                        prefixIcon: Icons.person_outline,
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
                      SizedBox(height: 20.h),
                      MyTextField(
                        hintText: 'Re-password',
                        prefixIcon: Icons.lock_outline,
                        sufixIcon: Icons.remove_red_eye_outlined,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CommonButton(
                        buttonColor: Color(0xFFFF725E),
                        text: "Sign up",
                        textColor: white,
                        borderSide: BorderSide.none,
                        buttonShadowColor: white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GenerateOTP(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
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
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Log in ',
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
