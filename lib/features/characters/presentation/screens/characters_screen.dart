import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/strings.dart';
import 'package:marvel_mission_manager/core/enums/mission_priority.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';
import 'package:marvel_mission_manager/features/characters/presentation/widgets/character_list_tile.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(Assets.marvelLogo, height: 30.h),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            pinned: true,
            expandedHeight: 100.h,
            collapsedHeight: 40.h,
            backgroundColor: context.appTheme.sliverAppBarTheme.backgroundColor,
            flexibleSpace: Container(
              alignment: Alignment.center,
              child: Text(
                Strings.missionManager,
                style: context.appTheme.sliverAppBarTheme.titleStyle,
              ),
            ),
          ),
          SliverAppBar(
            pinned: false,
            expandedHeight: 150.h,
            collapsedHeight: 40.h,
            backgroundColor: context.appTheme.sliverAppBarTheme.backgroundColor,
            flexibleSpace: Container(
              alignment: Alignment.center,
              child: Text(
                Strings.missionManager,
                style: context.appTheme.sliverAppBarTheme.titleStyle,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return CharacterListTile(
                character: Character(
                  "1",
                  "spider-man",
                  "https://images.unsplash.com/photo-1742241461508-07dfb49187c1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8",
                  100,
                  [
                    Mission("1", "spider-man", false, 1, MissionPriority.low),
                    Mission(
                      "2",
                      "spider-man",
                      true,
                      10,
                      MissionPriority.worldEnding,
                    ),
                  ],
                ),
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
