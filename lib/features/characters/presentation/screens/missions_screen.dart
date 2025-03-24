import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/locator/locator.dart';
import 'package:marvel_mission_manager/core/snackbar/snack_bar.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/core/widgets/back_button.dart';
import 'package:marvel_mission_manager/core/widgets/custom_app_bar.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/delete_mission.dart';
import 'package:marvel_mission_manager/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:marvel_mission_manager/features/characters/presentation/widgets/mission_list_tile.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key, required this.character});
  final Character character;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      bloc: getIt<CharactersBloc>(),
      buildWhen: (previous, current) => current is CharactersLoadedState,
      builder: (context, state) {
        final characters = (state as CharactersLoadedState).characters;
        final character = characters.firstWhere(
          (character) => character.id == character.id,
        );
        return Scaffold(
          appBar: CustomAppBar(
            leading: AppBackButton(),
            trailing: IconButton(
              onPressed: () async {
                final result = await context.push(
                  '/addMission',
                  extra: character,
                );
                if (result == true) {
                  AppSnackBar.showWarning(context);
                }
              },
              icon: Icon(Icons.add, color: AppColors.white),
            ),
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  width: double.infinity,
                  color: context.appTheme.missionTheme.topBarBackgroundColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.thunder,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                character.fatigue.toString(),
                                style:
                                    context.appTheme.missionTheme.fatigueStyle,
                              ),
                              SizedBox(width: 10),
                              SvgPicture.asset(Assets.fatigueIcon),
                            ],
                          ),
                        ),
                      ),
                      LayoutBuilder(
                        builder: (
                          BuildContext context,
                          BoxConstraints constraints,
                        ) {
                          final screenWidth = constraints.maxWidth;
                          final imageWidth = 1.sw.clamp(0, 800).toDouble();
                          final spacerWidth =
                              ((screenWidth - imageWidth) / 2).roundToDouble();
                          return Stack(
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
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 10.h)),
              SliverList.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: UniqueKey(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: MissionListTile(
                        characterId: character.id,
                        mission: character.missions[index],
                      ),
                    ),
                    onDismissed: (direction) {
                      getIt<CharactersBloc>().add(
                        CharactersDeleteMissionEvent(
                          DeleteMissionParams(
                            characterId: character.id,
                            mission: character.missions[index],
                          ),
                        ),
                      );
                    },
                  );
                },
                itemCount: character.missions.length,
              ),
            ],
          ),
        );
      },
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
