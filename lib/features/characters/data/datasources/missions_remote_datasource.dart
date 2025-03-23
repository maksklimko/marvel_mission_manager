import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:marvel_mission_manager/features/characters/data/models/mission_model.dart';

abstract interface class MissionsRemoteDataSource {
  Future<Either<FirestoreFailure, void>> addMission(
    String characterId,
    MissionModel mission,
  );
}

@Injectable(as: MissionsRemoteDataSource)
class MissionsRemoteDataSourceImpl implements MissionsRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;
  MissionsRemoteDataSourceImpl(this.firebaseFirestore);

  @override
  Future<Either<FirestoreFailure, void>> addMission(
    String characterId,
    MissionModel mission,
  ) async {
    try {
      await firebaseFirestore.collection('characters').doc(characterId).update({
        'missions': FieldValue.arrayUnion([mission.toJson()]),
      });
      return right(null);
    } catch (e) {
      return left(FirestoreFailure.unknownError());
    }
  }
}
