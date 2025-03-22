import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/features/missions/domain/models/character_model.dart';
import 'package:marvel_mission_manager/features/missions/presentation/widgets/mission_list_tile.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key, required this.character});
  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Image.network(character.imageUrl, height: 200.h),
          ),
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
}
