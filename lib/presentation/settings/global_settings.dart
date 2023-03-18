library AppColors;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// api url
const apiUrl = "https://api.uniinc-cnb.com";

// colors
var background = Colors.white;
var primary = Color.fromRGBO(0, 178, 113, 1);
var primary2 = Color.fromRGBO(48, 188, 151, 1);
var darkGreen = Color.fromRGBO(14, 95, 76, 1);
var secondary2 = Color.fromRGBO(185, 185, 185, 1);
var navicon = Color.fromRGBO(27, 224, 205, 1);
var forgetButton = Color.fromRGBO(143, 113, 255, 1);
var militaryGreen = Color.fromARGB(255, 85, 160, 111);
var normalText = Color.fromRGBO(58, 58, 58, 1);
var smallText = Color.fromRGBO(116, 112, 112, 1);
var headerText = Color.fromRGBO(81, 107, 158, 1);
var circle = Color.fromRGBO(244, 241, 222, 1);

// font styles
var headerFont = 'Open Sans';
var mainFont = 'Roboto';
var smoothFont = 'Epilogue';
var numberFont = 'Montserrat';

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
