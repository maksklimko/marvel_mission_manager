import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/data/datasources/characters_remote_datasource.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/characters_repository.dart';

@Injectable(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource charactersRemoteDataSource;
  CharactersRepositoryImpl(this.charactersRemoteDataSource);

  @override
  Future<Either<FirestoreFailure, List<Character>>> getCharacters() async {
    return (await charactersRemoteDataSource.getCharacters()).fold(
      (failure) => left(failure),
      (characters) => right(characters.map((e) => e.toEntity()).toList()),
    );
  }
}
