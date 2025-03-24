part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.load() = CharactersLoadEvent;
  const factory CharactersEvent.addMission(AddMissionParams params) =
      CharactersAddMissionEvent;
  const factory CharactersEvent.deleteMission(DeleteMissionParams params) =
      CharactersDeleteMissionEvent;
  const factory CharactersEvent.completeMission(CompleteMissionParams params) =
      CharactersCompleteMissionEvent;
}
