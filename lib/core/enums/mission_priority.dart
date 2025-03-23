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
}
