import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/core/usecase/usecase.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/add_mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/complete_mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/delete_mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/get_characters.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

@singleton
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final GetCharacters getCharactersUseCase;
  final AddMission addMission;
  final DeleteMission deleteMission;
  final CompleteMission completeMission;
  CharactersBloc(
    this.getCharactersUseCase,
    this.addMission,
    this.deleteMission,
    this.completeMission,
  ) : super(const CharactersInitialState()) {
    on<CharactersLoadEvent>((event, emit) async {
      emit(const CharactersLoadingState());
      final result = await getCharactersUseCase.call(NoParams());
      result.fold(
        (failure) => emit(CharactersErrorState(failure)),
        (characters) => emit(CharactersLoadedState(characters)),
      );
    });
    on<CharactersAddMissionEvent>((event, emit) async {
      emit(const CharactersLoadingState());
      await addMission.call(event.params);
      add(CharactersLoadEvent());
    });
    on<CharactersDeleteMissionEvent>((event, emit) async {
      emit(const CharactersLoadingState());
      await deleteMission.call(event.params);
      add(CharactersLoadEvent());
    });
    on<CharactersCompleteMissionEvent>((event, emit) async {
      emit(const CharactersLoadingState());
      await completeMission.call(event.params);
      add(CharactersLoadEvent());
    });
  }
}
