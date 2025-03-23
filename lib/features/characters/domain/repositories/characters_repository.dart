import 'package:dartz/dartz.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/character.dart';

abstract interface class CharactersRepository {
  Future<Either<FirestoreFailure, List<Character>>> getCharacters();
}
