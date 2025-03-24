part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = CharactersInitialState;
  const factory CharactersState.loading() = CharactersLoadingState;
  const factory CharactersState.loaded(List<Character> characters) =
      CharactersLoadedState;
  const factory CharactersState.error(Failure failure) = CharactersErrorState;
}
