enum MissionPriority {
  low,
  medium,
  high,
  worldEnding;

  static MissionPriority fromName(String name) {
    return MissionPriority.values.firstWhere((element) => element.name == name);
  }
}
