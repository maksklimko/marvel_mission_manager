import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';

class CharacterListTile extends StatelessWidget {
  const CharacterListTile({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    final isDangerous = character.missions.any(
      (mission) => mission.priority == MissionPriority.worldEnding,
    );

    return Center(
      child: SizedBox(
        height: 220,
        width: 0.9.sw.clamp(0, 500), // 90% of screen width, max 500
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: GestureDetector(
                onTap:
                    () => context.push(
                      '/missions/${character.id}',
                      extra: character.id,
                    ),
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Image.network(
                          character.imageUrl,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final spaceWidth = constraints.maxWidth * 0.3;
                          final gradientWidth = constraints.maxWidth * 0.2;
                          final contentWidth =
                              constraints.maxWidth - spaceWidth - gradientWidth;

                          return Row(
                            children: [
                              SizedBox(width: spaceWidth),
                              Container(
                                width: gradientWidth,
                                height: constraints.maxHeight,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      AppColors.thunder,
                                      AppColors.thunder.withAlpha(0),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: contentWidth,
                                height: constraints.maxHeight,
                                decoration: BoxDecoration(
                                  color: AppColors.thunder,
                                  border: Border.all(
                                    width: 0.0,
                                    color: AppColors.thunder,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.r),
                                    bottomRight: Radius.circular(15.r),
                                  ),
                                ),
                                child: _characterDetails(character, context),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (isDangerous) SvgPicture.asset(Assets.dangerIcon, height: 40),
          ],
        ),
      ),
    );
  }

  _characterDetails(Character character, BuildContext context) {
    final completedMissions =
        character.missions.where((mission) => mission.isCompleted).length;
    final completionPercentage = completedMissions / character.missions.length;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            character.name,
            style: context.appTheme.characterTheme.characterNameStyle,
          ),
          LinearProgressIndicator(value: completionPercentage),
          Text(
            "${(completionPercentage * 100).round()}% completed",
            style: context.appTheme.characterTheme.completionPercentageStyle,
          ),
        ],
      ),
    );
  }
}
