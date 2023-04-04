import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  String text;
  Color buttonColor;
  Color textColor;
  Color buttonShadowColor;
  BorderSide borderSide;
  Function onPressed;

  CommonButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.buttonShadowColor,
    required this.borderSide,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            shadowColor: buttonShadowColor,
            primary: buttonColor,
            side: borderSide),
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
