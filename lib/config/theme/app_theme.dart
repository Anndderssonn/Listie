import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() {
    const seedColor = Color(0xFF4CAF93);
    const scaffoldBgColor = Color(0xFFF9FAFB);
    const appBarBgColor = Color(0xFF4CAF93);
    const secondaryColor = Color(0xFF89CFF0);
    const secondaryContainer = Color(0xFFD6F5E6);
    const onSecondaryContainer = Color(0xFF083D2D);
    const errorColor = Color(0xFFE74C3C);

    final baseColorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ).copyWith(
      surface: Colors.white,
      onSurface: Color(0xFF1C1C1E),
      secondary: secondaryColor,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      error: errorColor,
      onError: Colors.white,
    );

    return ThemeData(
      colorScheme: baseColorScheme,
      scaffoldBackgroundColor: scaffoldBgColor,
      appBarTheme: AppBarTheme(
        backgroundColor: appBarBgColor,
        elevation: 2,
        foregroundColor: baseColorScheme.onSurface,
        titleTextStyle: GoogleFonts.inter(
          color: baseColorScheme.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      textTheme: GoogleFonts.interTextTheme().copyWith(
        headlineLarge: GoogleFonts.inter(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: baseColorScheme.onSurface,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: baseColorScheme.onSurface,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Color(0xFF444444),
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: Color(0xFF888888),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: seedColor,
        unselectedItemColor: Color(0xFF9BA3AF),
        showUnselectedLabels: true,
      ),
    );
  }
}
