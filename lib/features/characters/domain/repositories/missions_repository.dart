import 'package:dartz/dartz.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/data/models/mission_model.dart';

abstract interface class MissionsRepository {
  Future<Either<FirestoreFailure, void>> addMission(
    String characterId,
    MissionModel mission,
  );
}
