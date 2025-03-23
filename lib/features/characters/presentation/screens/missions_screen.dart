import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/core/widgets/custom_app_bar.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/presentation/widgets/mission_list_tile.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final screenWidth = constraints.maxWidth;
                final imageWidth = 1.sw.clamp(0, 800).toDouble();
                final spacerWidth =
                    ((screenWidth - imageWidth) / 2).roundToDouble();
                return Container(
                  width: double.infinity,
                  color: context.appTheme.missionTheme.topBarBackgroundColor,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.network(
                          character.imageUrl,
                          height: 200.h,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (screenWidth > 800)
                        _getImageVignette(context, spacerWidth),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10.h)),
          SliverList.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 10.h);
            },
            itemBuilder: (BuildContext context, int index) {
              return MissionListTile(mission: character.missions[index]);
            },
            itemCount: character.missions.length,
          ),
        ],
      ),
    );
  }

  _getImageVignette(BuildContext context, double spacerWidth) {
    return Row(
      children: [
        Container(
          height: 200.h,
          width: spacerWidth,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: context.appTheme.missionTheme.topBarBackgroundColor,
              ),
            ),
          ),
        ),
        Container(
          height: 200.h,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                context.appTheme.missionTheme.topBarBackgroundColor,
                context.appTheme.missionTheme.topBarBackgroundColor.withAlpha(
                  0,
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          height: 200.h,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                context.appTheme.missionTheme.topBarBackgroundColor,
                context.appTheme.missionTheme.topBarBackgroundColor.withAlpha(
                  0,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 200.h,
          width: spacerWidth,
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: context.appTheme.missionTheme.topBarBackgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
