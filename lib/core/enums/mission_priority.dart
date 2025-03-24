import 'dart:ui';

import 'package:marvel_mission_manager/core/constants/colors.dart';

enum MissionPriority {
  low,
  medium,
  high,
  worldEnding;

  static MissionPriority fromName(String name) {
    return MissionPriority.values.firstWhere((element) => element.name == name);
  }

  int getRequiredFatigue() {
    return switch (this) {
      MissionPriority.low => 1,
      MissionPriority.medium => 5,
      MissionPriority.high => 10,
      MissionPriority.worldEnding => 25,
    };
  }

  Color getColor() {
    return switch (this) {
      MissionPriority.low => AppColors.white,
      MissionPriority.medium => AppColors.saffronMango,
      MissionPriority.high => AppColors.gamboge,
      MissionPriority.worldEnding => AppColors.electricViolet,
    };
  }

  @override
  String toString() {
    return switch (this) {
      MissionPriority.low => 'Low',
      MissionPriority.medium => 'Medium',
      MissionPriority.high => 'High',
      MissionPriority.worldEnding => 'World-ending',
    };
  }
}
