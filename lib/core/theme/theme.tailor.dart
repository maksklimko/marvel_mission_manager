// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppThemeTailorMixin on ThemeExtension<AppTheme> {
  Color get secondary;
  CharacterTheme get characterTheme;
  MissionTheme get missionTheme;
  SliverAppBarTheme get sliverAppBarTheme;
  SnackbarTheme get snackbarTheme;
  MissionPriorityPickerTheme get missionPriorityPickerTheme;

  @override
  AppTheme copyWith({
    Color? secondary,
    CharacterTheme? characterTheme,
    MissionTheme? missionTheme,
    SliverAppBarTheme? sliverAppBarTheme,
    SnackbarTheme? snackbarTheme,
    MissionPriorityPickerTheme? missionPriorityPickerTheme,
  }) {
    return AppTheme(
      secondary: secondary ?? this.secondary,
      characterTheme: characterTheme ?? this.characterTheme,
      missionTheme: missionTheme ?? this.missionTheme,
      sliverAppBarTheme: sliverAppBarTheme ?? this.sliverAppBarTheme,
      snackbarTheme: snackbarTheme ?? this.snackbarTheme,
      missionPriorityPickerTheme:
          missionPriorityPickerTheme ?? this.missionPriorityPickerTheme,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      secondary: Color.lerp(secondary, other.secondary, t)!,
      characterTheme:
          characterTheme.lerp(other.characterTheme, t) as CharacterTheme,
      missionTheme: missionTheme.lerp(other.missionTheme, t) as MissionTheme,
      sliverAppBarTheme:
          sliverAppBarTheme.lerp(other.sliverAppBarTheme, t)
              as SliverAppBarTheme,
      snackbarTheme:
          snackbarTheme.lerp(other.snackbarTheme, t) as SnackbarTheme,
      missionPriorityPickerTheme:
          missionPriorityPickerTheme.lerp(other.missionPriorityPickerTheme, t)
              as MissionPriorityPickerTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(
              characterTheme,
              other.characterTheme,
            ) &&
            const DeepCollectionEquality().equals(
              missionTheme,
              other.missionTheme,
            ) &&
            const DeepCollectionEquality().equals(
              sliverAppBarTheme,
              other.sliverAppBarTheme,
            ) &&
            const DeepCollectionEquality().equals(
              snackbarTheme,
              other.snackbarTheme,
            ) &&
            const DeepCollectionEquality().equals(
              missionPriorityPickerTheme,
              other.missionPriorityPickerTheme,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(characterTheme),
      const DeepCollectionEquality().hash(missionTheme),
      const DeepCollectionEquality().hash(sliverAppBarTheme),
      const DeepCollectionEquality().hash(snackbarTheme),
      const DeepCollectionEquality().hash(missionPriorityPickerTheme),
    );
  }
}

extension AppThemeBuildContextProps on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
  Color get secondary => appTheme.secondary;
  CharacterTheme get characterTheme => appTheme.characterTheme;
  MissionTheme get missionTheme => appTheme.missionTheme;
  SliverAppBarTheme get sliverAppBarTheme => appTheme.sliverAppBarTheme;
  SnackbarTheme get snackbarTheme => appTheme.snackbarTheme;
  MissionPriorityPickerTheme get missionPriorityPickerTheme =>
      appTheme.missionPriorityPickerTheme;
}

mixin _$CharacterThemeTailorMixin on ThemeExtension<CharacterTheme> {
  TextStyle get characterNameStyle;
  TextStyle get completionPercentageStyle;

  @override
  CharacterTheme copyWith({
    TextStyle? characterNameStyle,
    TextStyle? completionPercentageStyle,
  }) {
    return CharacterTheme(
      characterNameStyle: characterNameStyle ?? this.characterNameStyle,
      completionPercentageStyle:
          completionPercentageStyle ?? this.completionPercentageStyle,
    );
  }

  @override
  CharacterTheme lerp(
    covariant ThemeExtension<CharacterTheme>? other,
    double t,
  ) {
    if (other is! CharacterTheme) return this as CharacterTheme;
    return CharacterTheme(
      characterNameStyle:
          TextStyle.lerp(characterNameStyle, other.characterNameStyle, t)!,
      completionPercentageStyle:
          TextStyle.lerp(
            completionPercentageStyle,
            other.completionPercentageStyle,
            t,
          )!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CharacterTheme &&
            const DeepCollectionEquality().equals(
              characterNameStyle,
              other.characterNameStyle,
            ) &&
            const DeepCollectionEquality().equals(
              completionPercentageStyle,
              other.completionPercentageStyle,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(characterNameStyle),
      const DeepCollectionEquality().hash(completionPercentageStyle),
    );
  }
}

mixin _$MissionThemeTailorMixin on ThemeExtension<MissionTheme> {
  Color get topBarBackgroundColor;
  Color get cardBottomBarColor;
  Color get energyCardColor;
  TextStyle get missionNameStyle;
  TextStyle get missionPriorityStyle;
  TextStyle get fatigueStyle;

  @override
  MissionTheme copyWith({
    Color? topBarBackgroundColor,
    Color? cardBottomBarColor,
    Color? energyCardColor,
    TextStyle? missionNameStyle,
    TextStyle? missionPriorityStyle,
    TextStyle? fatigueStyle,
  }) {
    return MissionTheme(
      topBarBackgroundColor:
          topBarBackgroundColor ?? this.topBarBackgroundColor,
      cardBottomBarColor: cardBottomBarColor ?? this.cardBottomBarColor,
      energyCardColor: energyCardColor ?? this.energyCardColor,
      missionNameStyle: missionNameStyle ?? this.missionNameStyle,
      missionPriorityStyle: missionPriorityStyle ?? this.missionPriorityStyle,
      fatigueStyle: fatigueStyle ?? this.fatigueStyle,
    );
  }

  @override
  MissionTheme lerp(covariant ThemeExtension<MissionTheme>? other, double t) {
    if (other is! MissionTheme) return this as MissionTheme;
    return MissionTheme(
      topBarBackgroundColor:
          Color.lerp(topBarBackgroundColor, other.topBarBackgroundColor, t)!,
      cardBottomBarColor:
          Color.lerp(cardBottomBarColor, other.cardBottomBarColor, t)!,
      energyCardColor: Color.lerp(energyCardColor, other.energyCardColor, t)!,
      missionNameStyle:
          TextStyle.lerp(missionNameStyle, other.missionNameStyle, t)!,
      missionPriorityStyle:
          TextStyle.lerp(missionPriorityStyle, other.missionPriorityStyle, t)!,
      fatigueStyle: TextStyle.lerp(fatigueStyle, other.fatigueStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MissionTheme &&
            const DeepCollectionEquality().equals(
              topBarBackgroundColor,
              other.topBarBackgroundColor,
            ) &&
            const DeepCollectionEquality().equals(
              cardBottomBarColor,
              other.cardBottomBarColor,
            ) &&
            const DeepCollectionEquality().equals(
              energyCardColor,
              other.energyCardColor,
            ) &&
            const DeepCollectionEquality().equals(
              missionNameStyle,
              other.missionNameStyle,
            ) &&
            const DeepCollectionEquality().equals(
              missionPriorityStyle,
              other.missionPriorityStyle,
            ) &&
            const DeepCollectionEquality().equals(
              fatigueStyle,
              other.fatigueStyle,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(topBarBackgroundColor),
      const DeepCollectionEquality().hash(cardBottomBarColor),
      const DeepCollectionEquality().hash(energyCardColor),
      const DeepCollectionEquality().hash(missionNameStyle),
      const DeepCollectionEquality().hash(missionPriorityStyle),
      const DeepCollectionEquality().hash(fatigueStyle),
    );
  }
}

mixin _$SliverAppBarThemeTailorMixin on ThemeExtension<SliverAppBarTheme> {
  Color get backgroundColor;
  TextStyle get titleStyle;

  @override
  SliverAppBarTheme copyWith({Color? backgroundColor, TextStyle? titleStyle}) {
    return SliverAppBarTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleStyle: titleStyle ?? this.titleStyle,
    );
  }

  @override
  SliverAppBarTheme lerp(
    covariant ThemeExtension<SliverAppBarTheme>? other,
    double t,
  ) {
    if (other is! SliverAppBarTheme) return this as SliverAppBarTheme;
    return SliverAppBarTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SliverAppBarTheme &&
            const DeepCollectionEquality().equals(
              backgroundColor,
              other.backgroundColor,
            ) &&
            const DeepCollectionEquality().equals(
              titleStyle,
              other.titleStyle,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(titleStyle),
    );
  }
}

mixin _$SnackbarThemeTailorMixin on ThemeExtension<SnackbarTheme> {
  TextStyle get titleStyle;
  TextStyle get messageStyle;
  Color get backgroundColor;

  @override
  SnackbarTheme copyWith({
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    Color? backgroundColor,
  }) {
    return SnackbarTheme(
      titleStyle: titleStyle ?? this.titleStyle,
      messageStyle: messageStyle ?? this.messageStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  SnackbarTheme lerp(covariant ThemeExtension<SnackbarTheme>? other, double t) {
    if (other is! SnackbarTheme) return this as SnackbarTheme;
    return SnackbarTheme(
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      messageStyle: TextStyle.lerp(messageStyle, other.messageStyle, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackbarTheme &&
            const DeepCollectionEquality().equals(
              titleStyle,
              other.titleStyle,
            ) &&
            const DeepCollectionEquality().equals(
              messageStyle,
              other.messageStyle,
            ) &&
            const DeepCollectionEquality().equals(
              backgroundColor,
              other.backgroundColor,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(titleStyle),
      const DeepCollectionEquality().hash(messageStyle),
      const DeepCollectionEquality().hash(backgroundColor),
    );
  }
}

mixin _$MissionPriorityPickerThemeTailorMixin
    on ThemeExtension<MissionPriorityPickerTheme> {
  Color get backgroundColor;
  Color get selectionColor;
  TextStyle get textStyle;

  @override
  MissionPriorityPickerTheme copyWith({
    Color? backgroundColor,
    Color? selectionColor,
    TextStyle? textStyle,
  }) {
    return MissionPriorityPickerTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      selectionColor: selectionColor ?? this.selectionColor,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  MissionPriorityPickerTheme lerp(
    covariant ThemeExtension<MissionPriorityPickerTheme>? other,
    double t,
  ) {
    if (other is! MissionPriorityPickerTheme)
      return this as MissionPriorityPickerTheme;
    return MissionPriorityPickerTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      selectionColor: Color.lerp(selectionColor, other.selectionColor, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MissionPriorityPickerTheme &&
            const DeepCollectionEquality().equals(
              backgroundColor,
              other.backgroundColor,
            ) &&
            const DeepCollectionEquality().equals(
              selectionColor,
              other.selectionColor,
            ) &&
            const DeepCollectionEquality().equals(textStyle, other.textStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(selectionColor),
      const DeepCollectionEquality().hash(textStyle),
    );
  }
}
