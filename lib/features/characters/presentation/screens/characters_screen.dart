import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/constants/strings.dart';
import 'package:marvel_mission_manager/core/locator/locator.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';
import 'package:marvel_mission_manager/core/widgets/custom_app_bar.dart';
import 'package:marvel_mission_manager/core/widgets/error_widget.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:marvel_mission_manager/features/characters/presentation/widgets/character_list_tile.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<CharactersBloc, CharactersState>(
        bloc: getIt<CharactersBloc>(),
        builder: (context, state) {
          return switch (state) {
            CharactersInitialState() => const SizedBox.shrink(),
            CharactersLoadingState() => const Center(
              child: CircularProgressIndicator(),
            ),
            CharactersLoadedState(:final characters) => _buildCharactersList(
              context,
              characters,
            ),
            _ => const AppErrorWidget(),
          };
        },
      ),
    );
  }

  Widget _buildCharactersList(
    BuildContext context,
    List<Character> characters,
  ) {
    return CustomScrollView(
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
        SliverList.builder(
          itemCount: characters.length,
          itemBuilder: (context, index) {
            return CharacterListTile(character: characters[index]);
          },
        ),
      ],
    );
  }
}
