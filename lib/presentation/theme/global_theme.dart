library AppColors;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

const apiUrl = "https://api.uniinc-cnb.com";

// colors
const background = Colors.white;
const primary = Color.fromRGBO(0, 178, 113, 1);
const primary2 = Color.fromRGBO(48, 188, 151, 1);
const darkGreen = Color.fromRGBO(14, 95, 76, 1);
const secondary2 = Color.fromRGBO(185, 185, 185, 1);
const navicon = Color.fromRGBO(27, 224, 205, 1);
const forgetButton = Color.fromRGBO(143, 113, 255, 1);
const militaryGreen = Color.fromARGB(255, 85, 160, 111);
const normalText = Color.fromRGBO(58, 58, 58, 1);
const smallText = Color.fromRGBO(116, 112, 112, 1);
const headerText = Color.fromRGBO(81, 107, 158, 1);
const circle = Color.fromRGBO(244, 241, 222, 1);
const danger = Color.fromARGB(255, 255, 93, 158);
const medium = Color.fromARGB(255, 92, 72, 204);
const yellow = Color.fromARGB(255, 246, 181, 69);
const cyan = Color.fromARGB(255, 46, 205, 202);
const primary3 = Color.fromARGB(255, 48, 188, 151);

// font styles
const headerFont = 'Open Sans';
const mainFont = 'Roboto';
const smoothFont = 'Epilogue';
const numberFont = 'Montserrat';

TextStyle boldTextStyle = GoogleFonts.montserrat(
  color: background,
  fontWeight: FontWeight.w700,
  fontSize: 24.sp,
);
TextStyle boldTextDarkStyle = GoogleFonts.montserrat(
  color: normalText,
  fontWeight: FontWeight.w700,
  fontSize: 24.sp,
);
TextStyle boldNumberStyle = GoogleFonts.montserrat(
  color: background,
  fontWeight: FontWeight.w700,
  fontSize: 40.sp,
);
TextStyle textStyle = GoogleFonts.openSans(
  color: background,
  fontWeight: FontWeight.w400,
  fontSize: 14.sp,
);
TextStyle boldSmallTextStyle = GoogleFonts.openSans(
  color: background,
  fontWeight: FontWeight.w700,
  fontSize: 14.sp,
);
