// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme.tailor.dart';

@TailorMixin()
class AppTheme extends ThemeExtension<AppTheme> with _$AppThemeTailorMixin {
  const AppTheme({
    required this.secondary,
    required this.missionTheme,
    required this.sliverAppBarTheme,
    required this.characterTheme,
    required this.snackbarTheme,
  });
  //General
  final Color secondary;

  //Theme components
  final CharacterTheme characterTheme;
  final MissionTheme missionTheme;
  final SliverAppBarTheme sliverAppBarTheme;
  final SnackbarTheme snackbarTheme;
}

@TailorMixinComponent()
class CharacterTheme extends ThemeExtension<CharacterTheme>
    with _$CharacterThemeTailorMixin {
  const CharacterTheme({
    required this.characterNameStyle,
    required this.completionPercentageStyle,
  });
  final TextStyle characterNameStyle;
  final TextStyle completionPercentageStyle;
}

@TailorMixinComponent()
class MissionTheme extends ThemeExtension<MissionTheme>
    with _$MissionThemeTailorMixin {
  const MissionTheme({
    required this.cardBottomBarColor,
    required this.energyCardColor,
    required this.missionNameStyle,
    required this.missionPriorityStyle,
    required this.fatigueStyle,
    required this.topBarBackgroundColor,
  });
  final Color topBarBackgroundColor;
  final Color cardBottomBarColor;
  final Color energyCardColor;
  final TextStyle missionNameStyle;
  final TextStyle missionPriorityStyle;
  final TextStyle fatigueStyle;
}

@TailorMixinComponent()
class SliverAppBarTheme extends ThemeExtension<SliverAppBarTheme>
    with _$SliverAppBarThemeTailorMixin {
  const SliverAppBarTheme({
    required this.backgroundColor,
    required this.titleStyle,
  });
  final Color backgroundColor;
  final TextStyle titleStyle;
}

@TailorMixinComponent()
class SnackbarTheme extends ThemeExtension<SnackbarTheme>
    with _$SnackbarThemeTailorMixin {
  const SnackbarTheme({
    required this.backgroundColor,
    required this.messageStyle,
    required this.titleStyle,
  });
  final TextStyle titleStyle;
  final TextStyle messageStyle;
  final Color backgroundColor;
}
