import 'package:flutter/material.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';

abstract class ThemeManager {
  static ThemeData get light => ThemeData(
    primaryColor: AppColors.lavaRed,
    scaffoldBackgroundColor: AppColors.rangoonGreen,
    cardTheme: CardTheme(color: AppColors.thunder),
    extensions: [
      AppTheme(
        secondary: AppColors.saffronMango,
        textTheme: AppTextTheme(background: AppColors.black),
        missionTheme: MissionTheme(
          cardBottomBarColor: AppColors.rangoonGreen,
          energyCardColor: AppColors.onyx,
        ),
      ),
    ],
  );
}
