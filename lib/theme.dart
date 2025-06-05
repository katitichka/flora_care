import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.notoSans().fontFamily,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: Colors.white,
    contentTextStyle: TextStyle(color: Colors.green[700]),
    behavior: SnackBarBehavior.floating,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.green[700],
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: const TextStyle(color: Colors.black87, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    actionsPadding: const EdgeInsets.all(10),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.green[900],
      textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.green[900]!),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.green[900]!, width: 2),
    ),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.green),
);
