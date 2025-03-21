// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme.tailor.dart';

@TailorMixin()
class AppTheme extends ThemeExtension<AppTheme> with _$AppThemeTailorMixin {
  const AppTheme({required this.secondary, required this.missionTheme});
  //General
  final Color secondary;

  //Theme components
  final MissionTheme missionTheme;
}

@TailorMixinComponent()
class MissionTheme extends ThemeExtension<MissionTheme>
    with _$MissionThemeTailorMixin {
  const MissionTheme({
    required this.cardBottomBarColor,
    required this.energyCardColor,
  });
  final Color cardBottomBarColor;
  final Color energyCardColor;
}
