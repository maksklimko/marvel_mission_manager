import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';
import 'package:marvel_mission_manager/features/characters/domain/entities/mission.dart';
import 'package:marvel_mission_manager/core/usecase/usecase.dart';
import 'package:marvel_mission_manager/features/characters/domain/repositories/missions_repository.dart';

@injectable
class CompleteMission implements UseCase<void, CompleteMissionParams> {
  final MissionsRepository missionsRepository;
  CompleteMission({required this.missionsRepository});
  @override
  Future<Either<Failure, void>> call(CompleteMissionParams params) async {
    return missionsRepository.completeMission(params);
  }
}

class CompleteMissionParams {
  final String characterId;
  final Mission mission;

  CompleteMissionParams({required this.characterId, required this.mission});
}
