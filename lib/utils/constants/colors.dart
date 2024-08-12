import 'package:flutter/material.dart';

class TColors{
  TColors._();

  /// App  Basics Colors
  static const Color purple = Color(0xffAA14F0);
  static const Color lightPurple = Color(0xffE4ABFF);

  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe24b);
  static const Color accents = Color(0xffb0c7ff);

  /// Gradient Color

  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ],
  );

  /// Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xff6c757d);
  static const Color textWhite = Colors.white;

  /// BackGround Colors
  static const Color light = Color(0xFFF6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackGround = Color(0xfff3f5ff);

  /// BackGround Container Colors
  static const Color lightContainer = Color(0xFFF6f6f6);
  static  Color darkContainer = Colors.white.withOpacity(0.1);

/// Button Colors
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttonDisable = Color(0xFFc4c4c4);

  /// Border Colors
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borerSecondary = Color(0xFFe6e6e6);

  ///Error And Validations Colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57300);
  static const Color info = Color(0xff1976d2);

  /// Neutral Shades
  static const Color black= Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);


}