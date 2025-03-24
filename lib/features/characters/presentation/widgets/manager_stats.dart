import 'package:flutter/material.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';

class ManagerStats extends StatelessWidget {
  const ManagerStats({super.key, required this.characters});
  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              MissionPriority.values
                  .map(
                    (e) => Text(
                      e.toString(),
                      style: context.appTheme.missionTheme.missionPriorityStyle
                          .copyWith(color: e.getColor()),
                    ),
                  )
                  .toList(),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:
              MissionPriority.values
                  .map(
                    (e) => Text(
                      _getPriorityCount(e).toString(),
                      style: context.appTheme.missionTheme.missionPriorityStyle,
                    ),
                  )
                  .toList(),
        ),
        Spacer(),
      ],
    );
  }

  _getPriorityCount(MissionPriority priority) {
    return characters.fold(0, (previousValue, element) {
      return previousValue +
          element.missions.where((m) => m.priority == priority).length;
    });
  }
}
