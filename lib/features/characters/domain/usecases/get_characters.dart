import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/core/usecase/usecase.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/characters_repository.dart';

@injectable
class GetCharacters implements UseCase<List<Character>, NoParams> {
  final CharactersRepository charactersRepository;
  const GetCharacters(this.charactersRepository);

  @override
  Future<Either<FirestoreFailure, List<Character>>> call(NoParams params) {
    return charactersRepository.getCharacters();
  }
}
