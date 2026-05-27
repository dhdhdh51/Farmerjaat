import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B8D53)),
    useMaterial3: true,
    textTheme: GoogleFonts.notoSansTextTheme(),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B8D53), brightness: Brightness.dark),
    useMaterial3: true,
    textTheme: GoogleFonts.notoSansTextTheme(ThemeData.dark().textTheme),
  );
}
