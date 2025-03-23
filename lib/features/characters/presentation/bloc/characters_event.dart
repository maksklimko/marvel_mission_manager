part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.load() = CharactersLoadEvent;
  const factory CharactersEvent.addMission(AddMissionParams params) =
      CharactersAddMissionEvent;
}
