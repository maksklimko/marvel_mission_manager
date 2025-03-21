import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';

abstract class ThemeManager {
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.lavaRed,
    scaffoldBackgroundColor: AppColors.rangoonGreen,
    cardTheme: CardTheme(
      color: AppColors.thunder,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lavaRed,
        overlayColor: AppColors.venetianRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.rangoonGreen,
      contentPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
      hintStyle: GoogleFonts.bangers(fontSize: 16.sp, color: AppColors.thunder),
      errorStyle: GoogleFonts.bangers(height: 0.01, color: Colors.transparent),

      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.venetianRed, width: 1.5),
        borderRadius: BorderRadius.circular(10.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10.r),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lavaRed, width: 2),
        borderRadius: BorderRadius.circular(10.r),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.white,
      selectionColor: AppColors.lavaRed,
      selectionHandleColor: AppColors.lavaRed,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.white),
    textTheme: TextTheme(
      labelMedium: GoogleFonts.bangers(fontSize: 16.sp, color: AppColors.white),
      bodyLarge: GoogleFonts.bangers(fontSize: 16.sp, color: AppColors.white),
    ),
    extensions: [
      AppTheme(
        secondary: AppColors.saffronMango,
        missionTheme: MissionTheme(
          cardBottomBarColor: AppColors.rangoonGreen,
          energyCardColor: AppColors.onyx,
        ),
      ),
    ],
  );
}
