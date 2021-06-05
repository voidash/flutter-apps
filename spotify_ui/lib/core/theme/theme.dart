import 'package:flutter/material.dart';

import '../values/colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeData(){
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: primaryColor,
    primaryColor: backgroundColor,
    accentColor: secondaryColor,
    textTheme:GoogleFonts.robotoTextTheme().copyWith(
      headline2: const TextStyle(
        color: Colors.white,
        fontSize: 32.0,
        fontWeight: FontWeight.bold ,
      ),
      headline4: TextStyle(
        fontSize: 16.0,
        color: Colors.grey[300],
        fontWeight: FontWeight.w300,
        letterSpacing: 2.0,
      ),
      bodyText1: TextStyle(
        color: Colors.grey[300],
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.0
      ),
      bodyText2: TextStyle(
        color: Colors.grey[300],
        letterSpacing: 1.0
      )
    ),



  );
}