import 'package:flutter/material.dart';

class TElevatedButtonTheme{

TElevatedButtonTheme._();

static final lightElevatedButtonTheme = ElevatedButtonThemeData(

  /// light theme
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    // side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 15),
    textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
  )
);static final darkElevatedButtonTheme = ElevatedButtonThemeData(

  /// dark theme
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        // side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
    )
);


}