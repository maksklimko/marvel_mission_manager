import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/data/datasources/missions_remote_datasource.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/missions_repository.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/add_mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/complete_mission.dart';
import 'package:marvel_mission_manager/features/characters/domain/usecases/delete_mission.dart';

@Injectable(as: MissionsRepository)
class MissionsRepositoryImpl implements MissionsRepository {
  final MissionsRemoteDataSource missionsRemoteDataSource;
  MissionsRepositoryImpl(this.missionsRemoteDataSource);

  @override
  Future<Either<FirestoreFailure, void>> addMission(
    AddMissionParams params,
  ) async {
    return missionsRemoteDataSource.addMission(
      params.characterId,
      params.mission,
    );
  }

  @override
  Future<Either<FirestoreFailure, void>> deleteMission(
    DeleteMissionParams params,
  ) async {
    return missionsRemoteDataSource.deleteMission(
      params.characterId,
      params.mission,
    );
  }

  @override
  Future<Either<FirestoreFailure, void>> completeMission(
    CompleteMissionParams params,
  ) async {
    return missionsRemoteDataSource.completeMission(
      params.characterId,
      params.mission,
    );
  }
}
