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
  MissionTheme get missionTheme;

  @override
  AppTheme copyWith({Color? secondary, MissionTheme? missionTheme}) {
    return AppTheme(
      secondary: secondary ?? this.secondary,
      missionTheme: missionTheme ?? this.missionTheme,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      secondary: Color.lerp(secondary, other.secondary, t)!,
      missionTheme: missionTheme.lerp(other.missionTheme, t) as MissionTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(
              missionTheme,
              other.missionTheme,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(missionTheme),
    );
  }
}

extension AppThemeBuildContextProps on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
  Color get secondary => appTheme.secondary;
  MissionTheme get missionTheme => appTheme.missionTheme;
}

mixin _$MissionThemeTailorMixin on ThemeExtension<MissionTheme> {
  Color get cardBottomBarColor;
  Color get energyCardColor;

  @override
  MissionTheme copyWith({Color? cardBottomBarColor, Color? energyCardColor}) {
    return MissionTheme(
      cardBottomBarColor: cardBottomBarColor ?? this.cardBottomBarColor,
      energyCardColor: energyCardColor ?? this.energyCardColor,
    );
  }

  @override
  MissionTheme lerp(covariant ThemeExtension<MissionTheme>? other, double t) {
    if (other is! MissionTheme) return this as MissionTheme;
    return MissionTheme(
      cardBottomBarColor:
          Color.lerp(cardBottomBarColor, other.cardBottomBarColor, t)!,
      energyCardColor: Color.lerp(energyCardColor, other.energyCardColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MissionTheme &&
            const DeepCollectionEquality().equals(
              cardBottomBarColor,
              other.cardBottomBarColor,
            ) &&
            const DeepCollectionEquality().equals(
              energyCardColor,
              other.energyCardColor,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(cardBottomBarColor),
      const DeepCollectionEquality().hash(energyCardColor),
    );
  }
}
