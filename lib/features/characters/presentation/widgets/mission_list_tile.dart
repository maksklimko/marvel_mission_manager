import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/constants/strings.dart';
import 'package:marvel_mission_manager/core/extensions/theme_extension.dart';
import 'package:marvel_mission_manager/core/locator/locator.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/core/widgets/app_button.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/complete_mission.dart';
import 'package:marvel_mission_manager/features/characters/presentation/bloc/characters_bloc.dart';

class MissionListTile extends StatelessWidget {
  const MissionListTile({
    super.key,
    required this.characterId,
    required this.mission,
  });
  final String characterId;
  final Mission mission;

  @override
  Widget build(BuildContext context) {
    final cardWidth =
        0.9.sw.clamp(0, 500).toDouble(); // 90% of screen width, max 500
    return Center(
      child: SizedBox(
        height: 120,
        width: cardWidth,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: cardWidth - 170,
                          child: Text(
                            mission.name,
                            style:
                                context.appTheme.missionTheme.missionNameStyle,
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: AppButton(
                            isDisabled: mission.isCompleted,
                            color: AppColors.lavaRed,
                            onPressed: () {
                              getIt<CharactersBloc>().add(
                                CharactersCompleteMissionEvent(
                                  CompleteMissionParams(
                                    characterId: characterId,
                                    mission: mission,
                                  ),
                                ),
                              );
                            },
                            title:
                                mission.isCompleted
                                    ? Strings.completed
                                    : Strings.complete,
                          ),
                        ),
                      ],
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
                              .copyWith(color: mission.priority.getColor()),
                        ),
                        Spacer(),
                        SvgPicture.asset(Assets.fatigueIcon, height: 20),
                        SizedBox(width: 5),
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
}
