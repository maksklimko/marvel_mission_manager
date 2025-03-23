import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/extensions/theme_extension.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';

class MissionListTile extends StatelessWidget {
  const MissionListTile({super.key, required this.mission});
  final Mission mission;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 120,
        width: 0.9.sw.clamp(0, 500), // 90% of screen width, max 500
        child: Container(
          decoration: BoxDecoration(
            color: context.theme.cardTheme.color,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: AppColors.onyx),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      mission.name,
                      style: context.appTheme.missionTheme.missionNameStyle,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Column(
                children: [
                  Spacer(),
                  Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: context.appTheme.missionTheme.cardBottomBarColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          mission.priority.name,
                          style: context
                              .appTheme
                              .missionTheme
                              .missionPriorityStyle
                              .copyWith(
                                color: _getMissionPriorityColor(
                                  mission.priority,
                                ),
                              ),
                        ),
                        Spacer(),
                        SvgPicture.asset(Assets.fatigueIcon, height: 20),
                        Text(
                          mission.priority.getRequiredFatigue().toString(),
                          style: context.appTheme.missionTheme.fatigueStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getMissionPriorityColor(MissionPriority priority) {
    return switch (priority) {
      MissionPriority.low => AppColors.white,
      MissionPriority.medium => AppColors.saffronMango,
      MissionPriority.high => AppColors.gamboge,
      MissionPriority.worldEnding => AppColors.electricViolet,
    };
  }
}
