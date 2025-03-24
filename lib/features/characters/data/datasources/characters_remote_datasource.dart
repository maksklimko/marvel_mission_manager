import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/data/models/character_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract interface class CharactersRemoteDataSource {
  Future<Either<FirestoreFailure, List<CharacterModel>>> getCharacters();
}

@Injectable(as: CharactersRemoteDataSource)
class CharactersRemoteDataSourceImpl implements CharactersRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;
  CharactersRemoteDataSourceImpl(this.firebaseFirestore);

  @override
  Future<Either<FirestoreFailure, List<CharacterModel>>> getCharacters() async {
    try {
      final characters = await firebaseFirestore.collection('characters').get();
      return right(
        characters.docs.map((e) {
          return CharacterModel.fromJson(e.data());
        }).toList(),
      );
    } catch (e) {
      return left(FirestoreFailure.unknownError());
    }
  }
}
