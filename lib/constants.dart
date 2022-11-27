import 'package:flutter/material.dart';

class Constants {


  // API TOKEN
  static String API_TOKEN = 'bimaghz';

  // Safe Area Padding
  static double SAFE_AREA_PADDING = 0;
  static String LOCAL_HOST = '192.168.1.5:8080';
  static String REAL_HOST = '194.59.170.180:8080';

  // Assets
  static const String HASHTAG_IMAGE = 'assets/images/hashtag-image.png';
  static const String RIVE_ARROW = 'assets/images/arrow_animation.riv';


  // Text Size
  static const double VERY_SMALL_SMALL_TEXT_FONT_SIZE = 11;
  static const double SMALL_TEXT_FONT_SIZE = 13;
  static const double MEDIUM_TEXT_FONT_SIZE = 15;
  static const double LARGE_TEXT_FONT_SIZE = 18;

  // Roundness
  static const double IMAGE_ROUNDNESS = 3;
  static const double APP_ROUNDNESS = 5;
  static const double TEXT_INPUT_ROUNDNESS = 10;
  static const double MAX_ROUNDNESS = 100;

  // STRINGS
  static const String SERVER_ERROR = "خطا در دسترسی به سرور";
  static const String CONNECTION_ERROR = "اینترنت وصل نیست";


  // TextStyle
  static const TextStyle TEXT_STYLE_BLACK_SMALL = TextStyle(
      color: COLOR_MAIN_DARK,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_BLACK_MEDIUM = TextStyle(
      color: COLOR_MAIN_DARK,
      fontSize: MEDIUM_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_BLACK_TITLE = TextStyle(
      color: COLOR_MAIN_DARK,
      fontSize: LARGE_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_BLACK_SMALL_BOLD = TextStyle(
      color: COLOR_MAIN_DARK,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_BLACK_MEDIUM_BOLD = TextStyle(
      color: COLOR_MAIN_DARK,
      fontSize: MEDIUM_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_BLACK_TITLE_BOLD = TextStyle(
      color: COLOR_MAIN_DARK,
      fontSize: LARGE_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_WHITE_SMALL = TextStyle(
      color: COLOR_WHITE_MAIN,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_WHITE_MEDIUM = TextStyle(
      color: COLOR_WHITE_MAIN,
      fontSize: MEDIUM_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_WHITE_TITLE = TextStyle(
      color: COLOR_WHITE_MAIN,
      fontSize: LARGE_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_WHITE_SMALL_BOLD = TextStyle(
      color: COLOR_WHITE_MAIN,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_WHITE_MEDIUM_BOLD = TextStyle(
      color: COLOR_WHITE_MAIN,
      fontSize: MEDIUM_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_WHITE_TITLE_BOLD = TextStyle(
      color: COLOR_WHITE_MAIN,
      fontSize: LARGE_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_GRAY_VERY_SMALL = TextStyle(
      color: COLOR_BUTTON_OVERLAY,
      fontSize: VERY_SMALL_SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_GRAY_VERY_SMALL_BOLD = TextStyle(
      color: COLOR_BUTTON_OVERLAY,
      fontSize: VERY_SMALL_SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_GRAY_SMALL_BOLD = TextStyle(
      color: COLOR_BUTTON_OVERLAY,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_GRAY_SMALL_BOLD_UNDERLINED = TextStyle(
      color: COLOR_BUTTON_OVERLAY,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_ERROR_VERY_SMALL = TextStyle(
      color: COLOR_RED_ERROR,
      fontSize: VERY_SMALL_SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_ERROR_SMALL = TextStyle(
      color: COLOR_RED_ERROR,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_ERROR_MEDIUM = TextStyle(
      color: COLOR_RED_ERROR,
      fontSize: MEDIUM_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_LIGHT_GRAY_VERY_SMALL = TextStyle(
      color: COLOR_LIGHT_GRAY,
      fontSize: VERY_SMALL_SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.normal,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_LIGHT_GRAY_VERY_SMALL_BOLD = TextStyle(
      color: COLOR_LIGHT_GRAY,
      fontSize: VERY_SMALL_SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_LIGHT_GRAY_SMALL_BOLD = TextStyle(
      color: COLOR_LIGHT_GRAY,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_LIGHT_GRAY_SMALL_BOLD_UNDERLINED =
      TextStyle(
          color: COLOR_LIGHT_GRAY,
          fontSize: SMALL_TEXT_FONT_SIZE,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          fontFamily: 'iranyekan');

  static const TextStyle TEXT_STYLE_BLUE_MOOD_SMALL = TextStyle(
      color: COLOR_BLUE,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');
  static const TextStyle TEXT_STYLE_GREEN_MOOD_SMALL = TextStyle(
      color: COLOR_GREEN,
      fontSize: SMALL_TEXT_FONT_SIZE,
      fontWeight: FontWeight.bold,
      fontFamily: 'iranyekan');

  // Colors
  static const Color COLOR_MAIN_DARK = Color.fromRGBO(0, 0, 0, 1);
  static const Color COLOR_BUTTON_OVERLAY = Color.fromRGBO(58, 58, 58, 1);
  static const Color COLOR_NAVIGATION_UNSELECTED =
      Color.fromRGBO(120, 120, 120, 1);
  static const Color COLOR_LIGHT_GRAY = Color.fromRGBO(160, 160, 160, 1);
  static const Color COLOR_WHITE_MAIN = Color.fromRGBO(255, 255, 255, 1);
  static const Color COLOR_RED_ERROR = Color.fromRGBO(175, 0, 0, 1);
  static const Color COLOR_BACKGROUND = Color.fromRGBO(29, 34, 38, 1);
  static const Color COLOR_BLUE = Colors.blueAccent;
  static const Color COLOR_GREEN = Colors.green;
  static const Color COLOR_PINK = Colors.pinkAccent;
}
