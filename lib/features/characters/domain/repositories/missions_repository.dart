import 'package:dartz/dartz.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/add_mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/delete_mission.dart';

abstract interface class MissionsRepository {
  Future<Either<FirestoreFailure, void>> addMission(AddMissionParams params);
  Future<Either<FirestoreFailure, void>> deleteMission(
    DeleteMissionParams params,
  );
}
