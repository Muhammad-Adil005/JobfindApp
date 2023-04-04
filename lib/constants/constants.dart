import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color orangeRed = Color(0xFFFF725E);
const Color black = Colors.black87;
const Color darkGreen = Color(0xFF008479);
const Color grey = Color(0xFFEBEBEB);
const Color subAndTitleColorOnboarding = Color(0xFF37474F);
const Color IconColor = Color(0xFF757575);
const Color lightDark = Color(0xff3E3E3E);
const Color lightgrey = Color(0xff7D7D7E);
const Color NineThree = Color(0xff939393);
const Color TripleThree = Color(0xff333F52);

const kMessageTextFieldDecoration = InputDecoration(
  isDense: true,
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: orangeRed, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: orangeRed, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: orangeRed, width: 2.0),
  ),
);

// const kTextFieldDecoration = InputDecoration(
//   hintText: 'Enter your password',
//   contentPadding:
//   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
//   enabledBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Color(0xFF2196F3), width: 1.0),
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Color(0xFF2196F3), width: 2.0),
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
// );

const Fivehundred14 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: Color(0xff333F52),
);
const Fivehundred15 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
  fontSize: 15,
  color: Color(0xff333F52),
);
const Fivehundred16 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: Colors.black,
);
const Fivehundred19 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
  fontSize: 19,
  color: Color(0xff333F52),
);
const Fivehundred20 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
  fontSize: 20,
  color: Colors.black,
);
const Threehundred13 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w300,
  fontSize: 13,
  color: Color(0xff7D808C),
);
const Fourhundred13 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  fontSize: 13,
  color: Color(0xff7434343),
);
const Whitehundred13 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  fontSize: 13,
  color: Colors.white,
);
