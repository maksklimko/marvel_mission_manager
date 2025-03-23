import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/data/datasources/missions_remote_datasource.dart';
import 'package:marvel_mission_manager/features/characters/data/models/mission_model.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/missions_repository.dart';

@Injectable(as: MissionsRepository)
class MissionsRepositoryImpl implements MissionsRepository {
  final MissionsRemoteDataSource missionsRemoteDataSource;
  MissionsRepositoryImpl(this.missionsRemoteDataSource);

  @override
  Future<Either<FirestoreFailure, void>> addMission(
    String characterId,
    MissionModel mission,
  ) async {
    return missionsRemoteDataSource.addMission(characterId, mission);
  }
}
