// ignore: file_names
// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const COLOR_PRIMARY = Color.fromARGB(235, 255, 255, 255);
const COLOR_SECONDARY = Color.fromRGBO(14, 85, 205, 1.0);
const COLOR_GREY = Color.fromRGBO(52, 54, 60, 1.0);
const COLOR_BLUE2 = Color.fromARGB(255, 234, 241, 248);
const COLOR_THEME = Color.fromARGB(255, 69, 80, 119);
const COLOR_GREY2 = Color.fromARGB(193, 99, 100, 102);
const COLOR_BLACK = Color.fromARGB(214, 5, 5, 5);
const COLOR_WHITE = Colors.white;
const COLOR_BLUE = Color.fromRGBO(40, 41, 61, 1);

const TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(
    color: COLOR_THEME,
    fontFamily: 'Poppins',
    fontSize: 25.0,
    // fontWeight: FontWeight.bold,
  ),
  headline2: TextStyle(
      color: COLOR_SECONDARY,
      fontFamily: 'Poppins',
      fontSize: 20.0,
      fontWeight: FontWeight.w600),
  headline3:
      TextStyle(color: COLOR_WHITE, fontFamily: 'Poppins', fontSize: 20.0),
  headline4: TextStyle(
      color: COLOR_WHITE,
      fontFamily: 'Poppins',
      fontSize: 18.0,
      fontWeight: FontWeight.bold),
  headline5:
      TextStyle(color: COLOR_THEME, fontFamily: 'Poppins', fontSize: 17.0),
  headline6:
      TextStyle(color: COLOR_WHITE, fontFamily: 'Poppins', fontSize: 17.0),
  bodyText1: TextStyle(color: COLOR_GREY, fontFamily: 'Poppins', height: 1.5),
  bodyText2:
      TextStyle(color: COLOR_GREY, fontFamily: 'Poppins', fontSize: 12.0),
  subtitle1: TextStyle(
    color: COLOR_GREY,
    fontWeight: FontWeight.w400,
  ),
);
const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontFamily: 'Poppins', fontSize: 10.0),
  headline2:
      TextStyle(color: COLOR_BLACK, fontFamily: 'Poppins', fontSize: 20.0),
  headline3:
      TextStyle(color: COLOR_BLACK, fontFamily: 'Poppins', fontSize: 18.0),
  headline4:
      TextStyle(color: COLOR_BLACK, fontFamily: 'Poppins', fontSize: 14.0),
  headline5:
      TextStyle(color: COLOR_BLACK, fontFamily: 'Poppins', fontSize: 12.0),
  headline6:
      TextStyle(color: COLOR_BLACK, fontFamily: 'Poppins', fontSize: 10.0),
  bodyText1: TextStyle(color: COLOR_GREY, fontFamily: 'Poppins', height: 1.5),
  bodyText2:
      TextStyle(color: COLOR_GREY, fontFamily: 'Poppins', fontSize: 12.0),
  subtitle1: TextStyle(
    color: COLOR_GREY,
    fontWeight: FontWeight.w400,
  ),
);
